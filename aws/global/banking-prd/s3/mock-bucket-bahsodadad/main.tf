module bucket {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git//.?ref=v3.14.1"

  bucket = "mock-bucket-bahsodadad"

  
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning = {
    enabled = false
  }
}