############################################
# Random ID for Unique Bucket Name
############################################

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

############################################
# S3 Bucket
############################################

resource "aws_s3_bucket" "monitoring_logs" {

  bucket = "${var.project_name}-${random_id.bucket_suffix.hex}"

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project_name}-logs"
    }
  )
}

############################################
# Enable Versioning
############################################

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.monitoring_logs.id

  versioning_configuration {
    status = "Enabled"
  }
}

############################################
# Server Side Encryption
############################################

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {

  bucket = aws_s3_bucket.monitoring_logs.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
