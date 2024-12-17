provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "d9edf4be-81a9-40da-8742-0cafa6e248d5"
    git_commit           = "d52e65547f1821b34ba002924b5f8f8f426c008b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-17 17:29:26"
    git_last_modified_by = "rajeshreddy.nandi@gmail.com"
    git_modifiers        = "rajeshreddy.nandi"
    git_org              = "nandimandalamrajeshreddy"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
