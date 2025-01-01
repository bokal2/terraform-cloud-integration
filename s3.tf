resource "random_id" "bucket_suffix" {
  byte_length = 5
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "bokal-demo-bucket-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_object" "name" {
  bucket = aws_s3_bucket.demo_bucket.id
  source = "demo_content.txt"
  key    = "demo_content.txt"
}
