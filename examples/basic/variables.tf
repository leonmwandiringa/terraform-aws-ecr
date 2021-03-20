variable "global_tags" {
  type        = map(any)
  description = "(required) module global tags"
  default = {
    "Name"      = "Basic"
    "Project"   = "Basic"
    "Namespace" = "Basic_Test"
  }
}

variable "region" {
  default = "us-east-2"
}

variable "images" {
  type = list(object({
    name                    = string
    max_images_per_repo     = number
    expire_image_after_days = number
  }))
  description = "(optional) list of images"
  default = [
    {
      "name" = "proxy"
      "max_images_per_repo"     = null
      "expire_image_after_days" = null
    },
    {
      "name" = "frontend"
      "max_images_per_repo"     = null
      "expire_image_after_days" = null
    },
  ]
}
