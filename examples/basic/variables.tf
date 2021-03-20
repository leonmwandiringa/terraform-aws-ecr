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
  type = list(string)
  description = "(optional) list of images"
  default = ["proxy", "frontend"]
}
