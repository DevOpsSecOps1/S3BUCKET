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
}
