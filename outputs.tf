output "bucket_name" {
  description = "Created S3 bucket name"
  value       = aws_s3_bucket.bootstrap.bucket
}
output "bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.bootstrap.arn
}
