resource "aws_s3_bucket" "onebucket" {
   bucket = "testingbuck2-s3-with-terraform"
   acl = "private"
   
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
   resource "aws_s3_bucket_public_access_block" "s3Public" {
   bucket = "${aws_s3_bucket.bucket.id}"
   block_public_acls = true
   block_public_policy = true
   restrict_public_buckets = true
  }
}
