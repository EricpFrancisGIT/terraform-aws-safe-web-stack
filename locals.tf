locals {
  common_tags = {
    Project     = "terraform-aws-safe-web-stack"
    Environment = var.environment
    Owner       = var.owner
  }
}
