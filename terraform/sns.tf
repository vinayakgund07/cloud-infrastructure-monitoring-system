############################################
# SNS Topic
############################################

resource "aws_sns_topic" "monitoring_alerts" {

  name = "${var.project_name}-alerts"

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project_name}-alerts"
    }
  )
}

############################################
# Email Subscription
############################################

resource "aws_sns_topic_subscription" "email_notification" {

  topic_arn = aws_sns_topic.monitoring_alerts.arn

  protocol = "email"

  endpoint = "vinayakgund33@gmail.com"
}

############################################
# SNS Topic Policy
############################################

resource "aws_sns_topic_policy" "default" {

  arn = aws_sns_topic.monitoring_alerts.arn

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DefaultPolicy"

        Effect = "Allow"

        Principal = {
          AWS = "*"
        }

        Action = [
          "SNS:Publish",
          "SNS:Subscribe",
          "SNS:GetTopicAttributes"
        ]

        Resource = aws_sns_topic.monitoring_alerts.arn
      }
    ]
  })
}
