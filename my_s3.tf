resource "aws_s3_bucket" "dev_s3" {
  bucket            = "dev_s3"

  tags {
      Name          = "dev_s3"
      env           = "dev"
      
  }
  versioning {
      enabled       = true
  }
}
