output "registry_id" {
  value       = module.ecr.registry_ids
}

output "repository_name" {
  value       = module.ecr.repository_names
}

output "repository_url" {
  value       = module.ecr.repository_urls
}

output "repository_arn" {
  value       = module.ecr.repository_arns
}
