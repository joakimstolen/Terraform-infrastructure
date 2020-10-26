resource "google_cloud_run_service" "hello" {
  name = "cloudrun-srv"
  location = "us-central1"
  project = "devops05-290206"

  template {
    spec {
      containers {
        image = "gcr.io/devops05-290206/docker@sha256:3a949348e90fb58b8142f258f4aa1d15108e0e3d2d104d1c9e0d62f62464dc6f"
        env {
          name = "LOGZ_TOKEN"
          value = var.logz_token
        }
      }
    }
  }




  traffic {
    percent = 100
    latest_revision = true
  }
}


data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.hello.location
  project     = google_cloud_run_service.hello.project
  service     = google_cloud_run_service.hello.name
  policy_data = data.google_iam_policy.noauth.policy_data
}