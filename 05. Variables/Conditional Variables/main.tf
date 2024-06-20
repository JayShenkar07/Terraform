provider "aws" {
  region = "ap-south-1"
}

# VARIABLES
variable "environment" {
  description = "Environment (Dev/Prod)"
  type        = string
  default     = "Dev"
}

variable "dev_subnet" {
  description = "Development Environment Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "prod_subnet" {
  description = "Production Environment Subnet"
  type        = string
  default     = "10.0.2.0/24"
}

# Creating a security group
resource "aws_security_group" "sg-1" {
  description = "Security Group"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.environment == "Prod" ? [var.prod_subnet] : [var.dev_subnet]
  }
}
