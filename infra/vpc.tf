resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    name       = local.resource_name
    env        = var.env
    created_by = "terraform_github_actions"
  }
}
