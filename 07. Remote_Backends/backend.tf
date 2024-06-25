terraform {
  backend "s3" {
    bucket = "myterrafrombucket"
    key    = "bucketname/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform_lock"
  }
}

