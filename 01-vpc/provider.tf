terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
  backend "s3" {
    bucket         = "roboshop-terraform-remote-state"
    key            = "roboshop-terraform-vpc"
    region         = "us-east-1"
    dynamodb_table = "roboshop-terraform-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}