provider "google" {
  project     = "${var.project_name}"
  region      = "asia-northeast1"
  zone      = "asia-northeast1-a"
}

resource "google_app_engine_application" "app" {
  project     = "${var.project_name}"
  location_id = "asia-northeast2"
}
