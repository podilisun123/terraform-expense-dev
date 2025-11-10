terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }
  backend "s3" {
    bucket    = "new-bucket-78s"
    key       = "aws-vpc-expense-sg-proj"
    region = "us-east-1"
    dynamodb_table = "new-table-78s"
  }
}
  provider "aws" {
    region  = "us-east-1"
  }

