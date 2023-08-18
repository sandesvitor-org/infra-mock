terraform {
  backend "s3" {
    bucket = "my-terraform-bucket"
    key    = "aws/banking-hml/global/s3/mock-bucket-ae45df/terraform.tfstate"
  }
}