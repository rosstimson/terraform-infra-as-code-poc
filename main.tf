provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_s3_bucket" "b" {
  bucket = "elsmc.tf.rosstimson"
  acl = "private"
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT","POST"]
    allowed_origins = ["elsmc.tf.rosstimson"]
    expose_headers = ["ETag"]
    max_age_seconds = 3000
  }
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowTest",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::173855303117:root"
      },
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::elsmc.tf.rosstimson/*"
    }
  ]
}
POLICY
}

