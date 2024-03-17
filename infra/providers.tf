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
  backend "s3" {
  }
}

provider "aws" {
  region = "us-east-1"
}
