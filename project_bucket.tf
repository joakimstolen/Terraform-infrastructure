resource "google_storage_bucket" "static-site" {
  project = "devops05-290206"
  name = "example-bucket12345678"
  location = "EU"
}