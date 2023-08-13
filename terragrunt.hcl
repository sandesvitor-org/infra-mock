terraform_version_constraint  = "1.2.9"
terragrunt_version_constraint = "0.39.2"

terraform {
  extra_arguments "disable_auto_approve" {
    commands  = ["apply", "destroy", ]
    arguments = ["-auto-approve=false"]
  }
}

locals {
  account_vars = read_terragrunt_config(find_in_parent_folders("account.hcl"))

  aws_region          = local.account_vars.locals.aws_region
  atlantis_workflow   = local.account_vars.locals.atlantis_workflow
}

# ----------------------------------------------------------------------------------------------------------------
# GENERATED REMOTE STATE BLOCK
# ----------------------------------------------------------------------------------------------------------------
# Generate the Terraform remote state block for storing state in S3
remote_state {
  backend = "local"
  config = {}
  generate = {
    path      = "backend.tf"
    if_exists = "skip"
  }
}

# ----------------------------------------------------------------------------------------------------------------
# GENERATED PROVIDER BLOCK
# ----------------------------------------------------------------------------------------------------------------
generate "provider" {
  path      = "provider.tf"
  if_exists = "skip"
  contents  = <<EOF
provider "aws" {
  region  = "${local.aws_region}"
}
EOF
}

