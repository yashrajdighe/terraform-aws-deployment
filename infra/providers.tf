# terraform {
#   cloud {
#     organization = "yashrajdighe-githubaction"

#     workspaces {
#       name = "githubaction-aws"
#     }
#   }
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::851725231363:role/github-repo-terraform-aws-deployment"
  }
}
