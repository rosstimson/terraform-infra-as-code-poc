variable "aws_access_key" {
  default = "{{env `AWS_ACCESS_KEY_ID`}}"
}
variable "aws_secret_key" {
  default = "{{env `AWS_SECRET_ACCESS_KEY`}}"
}
variable "aws_region" {
  description = "AWS region to launch servers."
  default = "eu-west-1"
}
