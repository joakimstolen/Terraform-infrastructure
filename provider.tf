terraform {
  backend "gcs" {
    bucket = "terraform-infra-bucket01"
    prefix = "terraformstate"
    credentials = "terraform-infrastructure01-186ba9cd69b9.json"
  }
}

provider "google-beta" {
  credentials = file("terraform-infrastructure01-186ba9cd69b9.json")
  project     = "terraform-infrastructure01"
  version = "~> 3.0.0-beta.1"
}


