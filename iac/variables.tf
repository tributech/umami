variable "neon_api_key" {
  description = "Neon API key (generate at https://console.neon.tech/app/settings/api-keys)"
  type        = string
  sensitive   = true
}

variable "neon_org_id" {
  description = "Neon organization ID"
  type        = string
}

variable "project_name" {
  description = "Neon project name"
  type        = string
  default     = "umami"
}

variable "region_id" {
  description = "Neon deployment region"
  type        = string
  default     = "aws-us-east-1"
}

variable "pg_version" {
  description = "PostgreSQL major version"
  type        = number
  default     = 17
}

variable "database_name" {
  description = "Name of the database to create"
  type        = string
  default     = "umami"
}
