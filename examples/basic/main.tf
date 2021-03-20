# basic test

provider "aws" {
  region = var.region
}

module "ecr" {
  source = "../../"
  images = var.images
  tags   = var.global_tags
}