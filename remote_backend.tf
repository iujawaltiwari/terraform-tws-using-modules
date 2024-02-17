 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  # Configuration aws
  region = "ap-south-1"
}

resource "aws_s3_bucket" "remote_bucket" {
       bucket = "remotebucket"
}

resource "aws_dynamodb_table" "remote_table" {
      name = "terra-remote-table"
      billing_mode = "PAY_PER_REQUEST"
      hash_key = "LockID"
      attribute {
         name = "LockID"
         type = "S"
      }
      tags = {
        Name = "terra-remote-table"
      }
}
