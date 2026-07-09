############################################
# EC2 Information
############################################

output "ec2_instance_id" {
  description = "EC2 Instance ID"

  value = aws_instance.monitoring_server.id
}

output "ec2_public_ip" {
  description = "EC2 Public IP Address"

  value = aws_instance.monitoring_server.public_ip
}

output "ec2_public_dns" {
  description = "EC2 Public DNS"

  value = aws_instance.monitoring_server.public_dns
}

############################################
# Security Group
############################################

output "security_group_id" {
  description = "Security Group ID"

  value = aws_security_group.monitoring_sg.id
}

############################################
# IAM
############################################

output "iam_role_name" {
  description = "EC2 IAM Role"

  value = aws_iam_role.ec2_role.name
}

############################################
# S3
############################################

output "s3_bucket_name" {
  description = "S3 Bucket Name"

  value = aws_s3_bucket.monitoring_logs.bucket
}

############################################
# SNS
############################################

output "sns_topic_arn" {
  description = "SNS Topic ARN"

  value = aws_sns_topic.monitoring_alerts.arn
}

############################################
# Lambda
############################################

output "lambda_function_name" {
  description = "Lambda Function Name"

  value = aws_lambda_function.auto_healing.function_name
}

############################################
# CloudWatch
############################################

output "cloudwatch_log_group" {
  description = "CloudWatch Log Group"

  value = aws_cloudwatch_log_group.monitoring_logs.name
}

############################################
# Application URL
############################################

output "application_url" {
  description = "Application URL"

  value = "http://${aws_instance.monitoring_server.public_ip}:${var.application_port}"
}
