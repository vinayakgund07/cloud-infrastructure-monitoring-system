############################################
# EC2 Instance
############################################

resource "aws_instance" "monitoring_server" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name

  subnet_id = data.aws_subnets.default.ids[0]

  vpc_security_group_ids = [
    aws_security_group.monitoring_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash
yum update -y

# Install Docker
yum install docker -y
systemctl start docker
systemctl enable docker

# Install Git
yum install git -y

# Install CloudWatch Agent
yum install amazon-cloudwatch-agent -y

# Install Python3
yum install python3 -y

# Create Application Directory
mkdir -p /opt/cloud-monitoring

echo "Cloud Infrastructure Monitoring System" > /opt/cloud-monitoring/README.txt

EOF

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project_name}-ec2"
    }
  )
}
