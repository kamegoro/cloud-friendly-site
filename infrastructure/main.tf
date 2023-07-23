provider "google" {
  project     = "${var.project_name}"
  region      = "${var.region}"
}

resource "google_app_engine_application" "app" {
  project     = "${var.project_name}"
  location_id = "asia-northeast2"
}

resource "google_app_engine_standard_app_version" "my_work" {
  version_id = "v1"
  runtime = "nodejs20"
}
