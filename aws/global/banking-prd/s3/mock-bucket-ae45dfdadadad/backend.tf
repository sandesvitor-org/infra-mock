terraform {
  backend "s3" {
    bucket = "my-terraform-bucket"
    key    = "aws/banking-prd/global/s3/mock-bucket-ae45dfdadadad/terraform.tfstate"
  }
}