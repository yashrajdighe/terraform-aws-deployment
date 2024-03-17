terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
  backend "s3" {
    assume_role = {
      role_arn = "arn:aws:iam::851725231363:role/gh-terraform-states"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
