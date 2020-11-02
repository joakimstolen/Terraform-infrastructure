provider "terraform-providers/statuscake" {
  username = "joakimstoelenhotmailcom"
  apikey = "12345abcde"
}


resource "statuscake_test" "google" {
  test_type = "HTTP"
  website_name = "My test"
  website_url = google_cloud_run_service.hello.status[0].url
  check_rate = 300
  contact_group = ["193689"]
}