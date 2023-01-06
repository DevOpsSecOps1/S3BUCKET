resource "aws_s3_bucket" "onebucket" {
   bucket = "testingbuck2-s3-with-terraform"
   acl = "private"
   block_public_acls       = true
   block_public_policy     = true
   ignore_public_acls      = true
   restrict_public_buckets = true
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}
#resource "aws_s3_bucket_public_access_block" "app" {
#  bucket = aws_s3_bucket.app.id

 # block_public_acls       = true
 # block_public_policy     = true
 # ignore_public_acls      = true
 # restrict_public_buckets = true
#}
