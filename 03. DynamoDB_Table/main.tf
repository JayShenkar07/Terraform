provider "aws" {
  region="ap-south-1"
}

resource "aws_dynamodb_table" "terraform_lock_example" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name="LockID"
    type="S"
  }
}