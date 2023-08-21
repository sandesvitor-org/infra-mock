provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::999456789012:role/banking-hml"
  }
}