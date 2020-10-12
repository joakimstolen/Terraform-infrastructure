terraform {
  backend "gcs" {
    bucket = "terraform-infra-bucket01"
    prefix = "terraformstate"
    credentials = "google-key.json"
  }
}

provider "google-beta" {
  credentials = file("google-key.json")
  project     = "terraform-infrastructure01"
  version = "~> 3.0.0-beta.1"
}