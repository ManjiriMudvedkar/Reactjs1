provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "react-aws-terraform-github-actions-s3-bucket" {
  bucket = var.bucket_name
  policy = data.aws_iam_policy_document.s3-website-policy.json
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
  




