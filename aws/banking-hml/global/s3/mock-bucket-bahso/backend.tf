terraform {
  backend "s3" {
    bucket   = "foundation-platform-terraform-state-tools-prd"
    encrypt  = true
    region   = "us-east-1"
    key      = "aws/banking-hml/global/s3/mock-bucket-bahso/terraform.tfstate"

    role_arn       = "arn:aws:iam::322745845743:role/atlantis-eks-bucket-policy-stone-tools-prd"
    dynamodb_table = "atlantis-eks-stone-tools-prd"
  }
}
