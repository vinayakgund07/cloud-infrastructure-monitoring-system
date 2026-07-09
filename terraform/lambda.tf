############################################
# IAM Role for Lambda
############################################

resource "aws_iam_role" "lambda_role" {

  name = "${var.project_name}-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "lambda.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = local.common_tags
}

############################################
# Attach AWS Managed Policies
############################################

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {

  role = aws_iam_role.lambda_role.name

  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy_attachment" "lambda_ssm_access" {

  role = aws_iam_role.lambda_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
}

resource "aws_iam_role_policy_attachment" "lambda_ec2_access" {

  role = aws_iam_role.lambda_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

############################################
# Lambda Deployment Package
############################################

data "archive_file" "lambda_zip" {

  type = "zip"

  source_file = "${path.module}/../lambda/auto-healing.py"

  output_path = "${path.module}/../lambda/auto-healing.zip"
}

############################################
# Lambda Function
############################################

resource "aws_lambda_function" "auto_healing" {

  function_name = "${var.project_name}-auto-healing"

  filename = data.archive_file.lambda_zip.output_path

  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  role = aws_iam_role.lambda_role.arn

  handler = "auto-healing.lambda_handler"

  runtime = "python3.12"

  timeout = 30

  memory_size = 256

  tags = local.common_tags
}
