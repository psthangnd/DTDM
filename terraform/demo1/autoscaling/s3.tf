resource "aws_s3_bucket" "assets_bucket" {
  bucket = "assets-v1"

  tags = {
    Name        = "assets"
  }
}