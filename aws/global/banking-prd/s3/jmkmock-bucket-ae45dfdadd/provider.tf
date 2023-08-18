provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "${{ steps.aws-config.output.result.account_settings['banking-prd'].role_arn | json }}"
  }
}
