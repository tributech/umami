terraform {
  required_version = ">= 1.14.0"

  cloud {
    organization = "Tributech"

    workspaces {
      name = "umami"
    }
  }

  required_providers {
    neon = {
      source = "kislerdm/neon"
    }
  }
}

provider "neon" {
  api_key = var.neon_api_key
}

resource "neon_project" "umami" {
  name       = var.project_name
  org_id     = var.neon_org_id
  region_id  = var.region_id
  pg_version = var.pg_version

  default_endpoint_settings {
    autoscaling_limit_min_cu = 0.25
    autoscaling_limit_max_cu = 0.25
  }
}

resource "neon_role" "umami" {
  project_id = neon_project.umami.id
  branch_id  = neon_project.umami.default_branch_id
  name       = var.role_name
}

resource "neon_database" "umami" {
  project_id = neon_project.umami.id
  branch_id  = neon_project.umami.default_branch_id
  name       = var.database_name
  owner_name = neon_role.umami.name
}
