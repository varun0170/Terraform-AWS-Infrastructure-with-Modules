# Terraform AWS Infrastructure with Modules

This project demonstrates how to build reusable **Terraform modules** for provisioning AWS infrastructure.  
It deploys:
- An **EC2 Instance** (with customizable AMI, instance type, and name).
- An **S3 Bucket** (with optional versioning enabled).

The project follows **Infrastructure as Code (IaC)** best practices and is structured in a modular way for reusability across different environments.

---

## 📂 Project Structure
terraform-aws-infra/
│── main.tf # Root configuration
│── variables.tf # Global variables
│── outputs.tf # Root outputs
│── modules/
│ ├── ec2_instance/ # EC2 reusable module
│ └── s3_bucket/ # S3 reusable module


---

## 🚀 Features
- Reusable Terraform **modules** for EC2 and S3.
- Easy to customize with variables (AMI ID, instance type, bucket name, etc.).
- **Versioning enabled** for S3 buckets.
- Clean **separation of concerns** (root config vs modules).
- **AWS provider** configuration with region setup.

---

## 🔧 Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed
- [AWS CLI](https://docs.aws.amazon.com/cli/) installed & configured:
  ```bash
  aws configure
An AWS account with sufficient permissions

📥 Usage
Clone this repository:

git clone https://github.com/varun0170/terraform-aws-infra.git
cd terraform-aws-infra
Initialize Terraform:


terraform init
Review the plan:


terraform plan
Apply the configuration:


terraform apply -auto-approve
Terraform will create:

1 EC2 instance

1 S3 bucket

📊 Example Variables
You can edit the values in main.tf to customize deployments:


module "my_ec2" {
  source        = "./modules/ec2_instance"
  ami_id        = "ami-123456"     # Replace with a valid AMI
  instance_type = "t2.micro"
  instance_name = "dev-web"
  vpc_id        = "vpc-abc123"
}

module "my_s3" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-terraform-bucket-demo-1234"
  versioning  = true
}
🧹 Clean Up
To destroy all created resources:


terraform destroy -auto-approve

---
