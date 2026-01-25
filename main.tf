terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
backend "s3" {
    bucket = "eric-tf-boot-20260123-01"
    key = "state/terraform.tfstate"
    region = "us-east-1"
}
}


provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "bootstrap" {
  bucket = var.bucket_name

  tags = merge(
    local.common_tags,
    { Day = "2" }
  )
}
