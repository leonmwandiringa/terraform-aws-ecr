output "registry_ids" {
  value       = aws_ecr_repository.default.*.registry_id
  description = "Registry IDs"
}

output "repository_names" {
  value       = aws_ecr_repository.default.*.name
  description = "Name of repositories created"
}

output "repository_urls" {
  value       = aws_ecr_repository.default.*.repository_url
  description = "URL of repositories created"
}

output "repository_arns" {
  value       = aws_ecr_repository.default.*.arn
  description = "ARN of repositories created"
}
