terraform {
  backend "s3" {
    bucket = "my-terraform-bucket"
    key    = "aws/banking-prd/global/s3/jmkmock-bucket-ae45dfdadd/terraform.tfstate"
  }
}