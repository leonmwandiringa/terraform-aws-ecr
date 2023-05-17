variable "tags" {
    type = object({
        Name = string
        Author      = string
        Environment = string
        Provisioner = string
        Region      = string
    })
    description = "ecr tags"
}


variable "scan_images_on_push" {
  type        = bool
  description = "(optional) Allow or disallow scan on push"
  default     = false
}

variable "encryption_configuration" {
  type = object({
    encryption_type = string
    kms_key         = any
  })
  description = "(optional) encryption type, provide kms key if using kms"
  default = {
    encryption_type = "AES256"
    kms_key         = null
  }
}

variable "image_tag_mutability" {
  type        = string
  description = "(optional) IMMUTABLE or MUTABLE, image changeability"
  default     = "MUTABLE"
}

variable "image_repository_access" {
  type        = string
  description = "(optional) Image access to the ECR, [READ_ONLY_ACCESS, FULL_ACCESS]"
  default     = "FULL_ACCESS"
}

variable "images" {
  type = list(string)
  description = "(optional) list of images"
  default = []
}

