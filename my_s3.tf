resource "aws_s3_bucket" "dev_s3" {
  bucket            = var.devbucket

  tags = {
      Name          = "dev_s3"
      env           = "dev"
      
  }
  versioning {
      enabled       = true
  }
}
