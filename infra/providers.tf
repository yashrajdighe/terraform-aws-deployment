terraform {
  cloud {
    organization = "yashrajdighe-githubaction"

    workspaces {
      name = "githubaction-aws"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
