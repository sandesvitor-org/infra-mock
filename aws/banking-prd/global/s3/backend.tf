terraform {
  backend "s3" {
    bucket                   = "bucket_name"
    encrypt                  = true
    region                   = "us-east-1"
    key                      = "aws/banking-prd/global/s3/teste-1234/terraform.tfstate"
    role_arn                 = ""
    skip_bucket_root_access  = true
    skip_bucket_enforced_tls = true
  }
}
