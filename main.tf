provider "aws" {
  region     = "us-east-1"
  access_key = "123"
  secret_key = "123/123"
}
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 100
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}