resource "aws_security_group" "monitoring_sg" {

  name        = "${var.project_name}-sg"
  description = "Security Group for Cloud Infrastructure Monitoring System"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH"

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = [var.allowed_ssh_ip]
  }

  ingress {
    description = "HTTP"

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Flask Application"

    from_port   = var.application_port
    to_port     = var.application_port
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}
