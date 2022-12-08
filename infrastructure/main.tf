provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "react-aws-terraform-github-actions-s3-bucket" {
  bucket = var.bucket_name
  acl = "public-read"
  policy = data.aws_iam_policy_document.s3-website-policy.json

  ##versioning {
   # enabled = var.versioning
 #}
  
 # tags = var.tags
}




