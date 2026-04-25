resource "random_id" "bucket_id" {
  byte_length = 8
}

data "aws_caller_identity" "current" {}
