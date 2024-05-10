output "registry_id" {
  value       = aws_ecr_repository.default[0].registry_id
  description = "Registry ID"
}

output "repository_name" {
  value       = aws_ecr_repository.default.*.name
  description = "Name of repositories created"
}

output "repository_url" {
  value       = aws_ecr_repository.default.*.repository_url
  description = "URL of repositories created"
}

output "repository_arn" {
  value       = aws_ecr_repository.default.*.arn
  description = "ARN of repositories created"
}
