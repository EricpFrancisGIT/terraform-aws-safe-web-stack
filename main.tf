terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  #backend "s3" {
  # bucket = "eric-tf-boot-20260127-01"
  #key    = "state/terraform.tfstate"
  #region = "us-east-1"
  #}
}


provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.bucket_name

  tags = merge(
    local.common_tags,
    { Day = "8" }
  )
}




