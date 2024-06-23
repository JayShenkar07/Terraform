provider "aws" {
  region="ap-south-1"
}

# module "ec2-instance_custom_module" {
#   #Provide path to the module (it may be a github repo)
#   source= "F:/DevOps/Terraform/06. Modules/ec2-instance_custom_module"

#   #Person executing this must know about the variables
#   ami_value="ami-0e1d06225679bc1c5"
#   instance_type_value="t2.micro"
#   subnet_id_value="subnet-0af733c2609b1428d"
# }


module "s3_custom_module" {
  source = "F:/DevOps/Terraform/06. Modules/s3_custom_module"

  bucketName_value="myterrafrombucket1606"
}