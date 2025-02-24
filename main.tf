terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key    = var.object_name
  source = "archive.zip"
  etag   = filemd5("archive.zip")
}
