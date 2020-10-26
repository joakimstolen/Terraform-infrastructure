resource "google_storage_bucket" "static-site" {
  project = "devops05-290206"
  name = "devops05-290206-01"
  location = "EU"
}