provider "aws" {
  region="ap-south-1"
}


resource "aws_instance" "example1" {
  ami           = var.ami_value              #ami-013e83f579886baeb
  instance_type = var.instance_type_value    #t2.micro
  subnet_id     = var.subnet_id_value        #subnet-0592ed6ca47095ab
  key_name      = "Good-key"
}