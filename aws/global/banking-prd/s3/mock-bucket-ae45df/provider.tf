
provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "{{ roleArn }}"
  }
}

# provider "aws" {
#   region = "us-east-1"

#   assume_role {
#     role_arn = ""
#   }
# }
