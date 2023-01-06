resource "aws_s3_bucket_public_access_block" "block_main_bucket" {
  bucket = aws_s3_bucket.main_bucket.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}
