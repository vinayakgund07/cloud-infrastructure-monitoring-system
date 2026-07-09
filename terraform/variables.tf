# AWS Region
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

# Project Name
variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "cloud-infrastructure-monitoring-system"
}

# Environment
variable "environment" {
  description = "Deployment Environment"
  type        = string
  default     = "development"
}

# EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

# EC2 Key Pair Name
variable "key_name" {
  description = "AWS EC2 Key Pair Name"
  type        = string
  default     = "cloud-monitoring-key"
}

# AMI ID
variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID"

  type = string

  # Amazon Linux 2023 (Mumbai Region)
  default = "ami-0f58b397bc5c1f2e8"
}

# SSH Allowed CIDR
variable "allowed_ssh_ip" {
  description = "Allowed IP Address for SSH"

  type = string

  default = "0.0.0.0/0"
}

# Application Port
variable "application_port" {
  description = "Flask Application Port"

  type = number

  default = 5000
}
