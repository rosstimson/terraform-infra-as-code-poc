provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_s3_bucket" "b" {
  bucket = "elsmc.tf.rosstimson"
  acl = "private"
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

