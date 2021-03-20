# author LTM 

resource "aws_ecr_repository" "default" {
  count                = length(var.images)
  name                 = var.images[count.index]
  image_tag_mutability = var.image_tag_mutability

  dynamic "encryption_configuration" {
    for_each = [var.encryption_configuration]
    content {
      encryption_type = encryption_configuration.value.encryption_type
      kms_key         = encryption_configuration.value.encryption_type != "AES256" ? encryption_configuration.value.kms_key : null
    }
  }

  image_scanning_configuration {
    scan_on_push = var.scan_images_on_push
  }

  tags = merge(
    var.tags,
    {
      "Name" = var.images[count.index]
    },
  )
}
