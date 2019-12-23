resource "aws_s3_bucket" "dev_bucket" {
  bucket            = var.devbucket

  tags = {
      Name          = "devbucket"
      env           = "dev"
      
  }
  versioning {
      enabled       = true
  }
}
