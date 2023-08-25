terraform {
  backend "s3" {
    bucket   = "state-bucket-test"
    encrypt  = true
    region   = "us-east-1"
    key      = "aws/banking-prd/global/s3/mock-bucket-ae45dfdadd/terraform.tfstate"
    
  }
}
