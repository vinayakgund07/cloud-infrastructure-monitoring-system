############################################
# IAM Role for EC2
############################################

resource "aws_iam_role" "ec2_role" {
  name = "${var.project_name}-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = local.common_tags
}

############################################
# Attach CloudWatch Agent Policy
############################################

resource "aws_iam_role_policy_attachment" "cloudwatch_agent" {

  role = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

############################################
# Attach Amazon S3 Read Only Policy
############################################

resource "aws_iam_role_policy_attachment" "s3_readonly" {

  role = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

############################################
# Attach Amazon SNS Full Access
############################################

resource "aws_iam_role_policy_attachment" "sns_access" {

  role = aws_iam_role.ec2_role.name

  policy_arn = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
}

############################################
# EC2 Instance Profile
############################################

resource "aws_iam_instance_profile" "ec2_profile" {

  name = "${var.project_name}-instance-profile"

  role = aws_iam_role.ec2_role.name
}
