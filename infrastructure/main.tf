provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "bucket" {
  name     = var.project_name
  location = var.region
}

resource "google_app_engine_application" "app" {
  project     = var.project_id
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
      name       = "static"
      source_url = "gs://${google_storage_bucket.bucket.name}/static.zip"
    }
  }
}
