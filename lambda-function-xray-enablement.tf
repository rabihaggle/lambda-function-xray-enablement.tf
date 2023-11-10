resource "aws_lambda_function" "service" {
  # Your usual aws_lambda_function configuration settings here

  tracing_config {
    mode = "Active"
  }
}


resource "aws_iam_role_policy_attachment" "aws_xray_write_only_access" {
  role       = aws_iam_role.lambda.name
  policy_arn = "arn:aws:iam::aws:policy/AWSXrayWriteOnlyAccess"
}
