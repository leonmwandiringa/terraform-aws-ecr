# basic test

provider "aws" {
  region = var.region
}

module "ecr" {
  source = "git::https://github.com/techadontech/aws-ecr-terraform.git"
  images = var.images
  tags   = var.global_tags
}