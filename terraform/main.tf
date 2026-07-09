terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

# Get Default VPC
data "aws_vpc" "default" {
  default = true
}

# Get Default Subnets
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Current AWS Account
data "aws_caller_identity" "current" {}

# Current AWS Region
data "aws_region" "current" {}

# Local Variables
locals {
  project_name = var.project_name
  environment  = var.environment

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Vinayak Gund"
  }
}
