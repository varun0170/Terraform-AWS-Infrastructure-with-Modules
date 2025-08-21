output "ec2_instance_id" {
  value = module.my_ec2.instance_id
}

output "s3_bucket_name" {
  value = module.my_s3.bucket_name
}
