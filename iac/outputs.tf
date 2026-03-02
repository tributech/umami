output "project_id" {
  description = "Neon project ID"
  value       = neon_project.umami.id
}

output "default_branch_id" {
  description = "Default branch ID"
  value       = neon_project.umami.default_branch_id
}

output "connection_uri" {
  description = "PostgreSQL connection URI (use as DATABASE_URL)"
  value       = neon_project.umami.connection_uri
  sensitive   = true
}

output "database_name" {
  description = "Database name"
  value       = neon_database.umami.name
}
