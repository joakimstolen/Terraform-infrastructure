resource "google_storage_bucket" "static-site" {
  project = "terraform-infrastructure01"
  name = "terraform-infra-bucket02"
  location = "EU"
}