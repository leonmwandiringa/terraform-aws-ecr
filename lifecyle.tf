# # author LTM 

# resource "aws_ecr_lifecycle_policy" "lifecycle_policy_expires_after" {
#   count      = var.image_tag_mutability == "MUTABLE" ? length(var.images) : 0
#   repository = var.images[count.index].name

#   policy     = var.images[count.index].expire_image_after_days == null ? "" : <<EOF
# {
#     "rules": [
#         {
#             "rulePriority": 1,
#             "description": "Expire images older than ${var.images[count.index].expire_image_after_days} days",
#             "selection": {
#                 "tagStatus": "expiring",
#                 "countType": "sinceImagePushed",
#                 "countUnit": "days",
#                 "countNumber": "${var.images[count.index].expire_image_after_days}"
#             },
#             "action": {
#                 "type": "expire"
#             }
#         }
#     ]
# }
# EOF
# }

# resource "aws_ecr_lifecycle_policy" "lifecycle_policy_max_images" {
#   count      = var.image_tag_mutability == "IMMUTABLE" ? length(var.images) : 0
#   repository = var.images[count.index].name

#   policy = var.images[count.index].max_images_per_repo == null ? "" : <<EOF
# {
#     "rules": [
#         {
#             "rulePriority": 1,
#             "description": "Keep last ${var.images[count.index].max_images_per_repo} images",
#             "selection": {
#                 "tagStatus": "tagged",
#                 "tagPrefixList": ["v"],
#                 "countType": "imageCountMoreThan",
#                 "countNumber": "${var.images[count.index].max_images_per_repo}"
#             },
#             "action": {
#                 "type": "expire"
#             }
#         }
#     ]
# }
# EOF
# }