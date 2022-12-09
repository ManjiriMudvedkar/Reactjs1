output "s3_bucket_name" {
  value = aws_s3_bucket.react-aws-terraform-github-actions.id
}

output "s3_bucket_region" {
    value = aws_s3_bucket.my-s3-bucket.region
}
