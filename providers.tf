terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }
  backend "s3" {
    bucket = "remotebucket"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terra-remote-table"

  }
}

provider "aws" {
  # Configuration AWS
   region = "ap-south-1" 
}

