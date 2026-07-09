############################################
# CloudWatch Log Group
############################################

resource "aws_cloudwatch_log_group" "monitoring_logs" {

  name              = "/aws/ec2/${var.project_name}"
  retention_in_days = 14

  tags = local.common_tags
}

############################################
# CPU Utilization Alarm
############################################

resource "aws_cloudwatch_metric_alarm" "cpu_high" {

  alarm_name          = "${var.project_name}-HighCPU"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 80

  alarm_description = "Alarm when EC2 CPU exceeds 80%"

  dimensions = {
    InstanceId = aws_instance.monitoring_server.id
  }

  alarm_actions = [
    aws_sns_topic.monitoring_alerts.arn
  ]

  ok_actions = [
    aws_sns_topic.monitoring_alerts.arn
  ]

  treat_missing_data = "missing"

  tags = local.common_tags
}

############################################
# EC2 Status Check Alarm
############################################

resource "aws_cloudwatch_metric_alarm" "status_check" {

  alarm_name          = "${var.project_name}-StatusCheck"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Maximum"
  threshold           = 0

  alarm_description = "Alarm when EC2 status check fails"

  dimensions = {
    InstanceId = aws_instance.monitoring_server.id
  }

  alarm_actions = [
    aws_sns_topic.monitoring_alerts.arn
  ]

  ok_actions = [
    aws_sns_topic.monitoring_alerts.arn
  ]

  treat_missing_data = "missing"

  tags = local.common_tags
}
