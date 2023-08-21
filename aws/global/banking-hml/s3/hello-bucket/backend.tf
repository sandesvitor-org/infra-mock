terraform {
  backend "s3" {
    bucket = "my-terraform-bucket"
    key    = "aws/banking-hml/global/s3/hello-bucket/terraform.tfstate"
  }
}