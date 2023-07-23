provider "google" {
  project = var.project_name
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name     = var.project_name
  location = var.region
}

resource "google_app_engine_application" "app" {
  project     = var.project_name
  location_id = "asia-northeast2"
}

resource "google_app_engine_standard_app_version" "my_work" {
  version_id = "v1"
  service    = "my_work"
  runtime    = "nodejs20"

  entrypoint {
    shell = ""
  }

  deployment {
    files {
      name = "deploy_file"
      source_url      = "gs://${google_storage_bucket.bucket.name}/app.yaml"
    }
  }
}
