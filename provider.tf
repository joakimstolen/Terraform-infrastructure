terraform {
  backend "gcs" {
    bucket = "example-bucket12345678"
    prefix = "terraformstate"
    credentials = "google-key.json"
  }
}

provider "google-beta" {
  credentials = file("google-key.json")
  project     = "devops05-290206"
  version = "~> 3.0.0-beta.1"
}






