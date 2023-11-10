resource "aws_lambda_function" "service" {
  # Your usual aws_lambda_function configuration settings here

  tracing_config {
    mode = "Active"
  }
}
