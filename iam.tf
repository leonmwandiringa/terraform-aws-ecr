# author LTM
resource "aws_ecr_repository_policy" "default" {
  count      = length(var.images)
  repository = var.images[count.index]
  depends_on = [aws_ecr_repository.default]
  policy     = var.image_repository_access == "FULL_ACCESS" ? file("${path.module}/full_access.json") : file("${path.module}/read_only.json")
}