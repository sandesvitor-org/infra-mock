provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::662018048003:role/atlantis-roles-banking"
  }
}
