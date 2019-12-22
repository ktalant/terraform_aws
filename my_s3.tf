resource "aws_s3_bucket" "dev_s3" {
  bucket            = var.dev_bucket_name

  tags {
      Name          = "dev_s3"
      env           = "dev"
      
  }
  versioning {
      enabled       = true
  }
}
