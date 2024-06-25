provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-123.." 
  instance_type = "t2.micro"
  subnet_id     = "subnet-id"  
  key_name      = "key"
  
}
