provider "statuscake" {
  username = "joakimstoelenhotmailcom"
  //apikey = "12345abcde"
}


resource "statuscake_test" "google" {
  test_type = "HTTP"
  website_name = "My test"
  website_url = "https://letshopethisdoesnotexistatall123.com"
  check_rate = 300
  contact_group = ["193689"]
}













