# basic test

provider "aws" {
  region = var.region
}

module "ecr" {
  source = "git::https://github.com/techadontech/terraform-aws-ecr.git"
  images = var.images
  tags   = var.global_tags
}