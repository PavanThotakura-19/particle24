resource "aws_iam_role" "lambda_exec" {
  name = "lambda-vpc-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_vpc_policy" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
}

resource "aws_lambda_function" "container_fn" {
  function_name = "my-container-fn"
  role          = aws_iam_role.lambda_exec.arn
  package_type  = "Image"
  image_uri     = "pavankumarthotakura/simple-time-service:latest"

  timeout       = 30
  memory_size   = 512

  vpc_config {
    subnet_ids         = aws_subnet.private[*].id
    security_group_ids = [aws_security_group.lambda_sg.id]
  }
}