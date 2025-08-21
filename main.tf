provider "aws" {
  region = "us-east-1"
}

# EC2 Module
module "my_ec2" {
  source        = "./modules/ec2_instance"
  ami_id        = "ami-123456"    # Replace with a real AMI from AWS
  instance_type = "t2.micro"
  instance_name = "dev-web"
  vpc_id        = "vpc-abc123"    # Replace with your VPC ID
}

# S3 Module
module "my_s3" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-terraform-bucket-demo-1234"
  versioning  = true
}
