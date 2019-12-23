resource "aws_s3_bucket" "talant_bucket1" {
  bucket            = var.devbucket

  tags = {
      Name          = "devbucket"
      env           = "dev"
      
  }
  versioning {
      enabled       = true
  }
}
