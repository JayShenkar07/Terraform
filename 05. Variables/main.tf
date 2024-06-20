provider "aws" {
  region = "ap-south-1"
}

# INPUT VARIABLES
variable "var1" {
  description = "EC2 AMI ID"
  type        = string
#   default     = "ami-013e83f579886baeb"
}

variable "var2" {
  description = "EC2 Instance Type"
  type        = string
#   default     = "t2.micro"
}

# RESOURCE
resource "aws_instance" "example1" {
  ami           = var.var1 
  instance_type = var.var2
  subnet_id     = "subnet-0592ed6ca47095ab7"
  key_name      = "Good-key"
}

# OUTPUT
output "PublicIpOfInstance" {
  description = "This is the public IP for the created instance: "
  value = aws_instance.example1.public_ip
}
