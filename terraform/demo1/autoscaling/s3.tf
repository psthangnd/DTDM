resource "aws_s3_bucket" "assets_bucket" {
  bucket = "assets-v1"
  #region = "us-east-2"
  #acl    = "public-read"

  #versioning {
  #  enabled = false
  #}
  tags = {
    Name        = "assets"
  }
}