provider "aws" {
  region="ap-south-1"
}

resource "aws_s3_bucket" "bucketExample" {
  bucket = var.bucketName_value
}


