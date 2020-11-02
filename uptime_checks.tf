provider "statuscake" {
  username = "joakimstoelenhotmailcom"
}


resource "statuscake_test" "google" {
  test_type = "HTTP"
  website_name = "devops test"
  website_url = google_cloud_run_service.hello.status[0].url
  check_rate = 300
  contact_group = ["193689"]
}