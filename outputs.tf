output "registry_id" {
  value       = aws_ecr_repository.default[0].registry_id
  description = "Registry ID"
}

output "repository_name" {
  value       = join(",", aws_ecr_repository.default.*.name)
  description = "Name of first repository created"
}

output "repository_url" {
  value       = join(",", aws_ecr_repository.default.*.repository_url)
  description = "URL of first repository created"
}

output "repository_arn" {
  value       = join(",", aws_ecr_repository.default.*.arn)
  description = "ARN of first repository created"
}
