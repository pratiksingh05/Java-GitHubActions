resource "aws_lambda_function" "test_lambda" {
  function_name = "philips-lambda-fun"
  role          = "arn:aws:iam::601356012742:role/science-geneos-lambda-role"
}