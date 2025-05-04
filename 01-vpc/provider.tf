terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.96.0"
    }
  }
  backend "s3" {
    bucket    = "sun78s-bucket"
    key       = "aws-vpc"
    region = "us-east-1"
    dynamodb_table = "terraform_locking"
  }
}
  provider "aws" {
    region  = "us-east-1"
  }
