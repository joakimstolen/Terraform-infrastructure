provider "statuscake" {
  username = "joakimstoelenhotmailcom"
  //apikey = "12345abcde"
}


resource "statuscake_test" "google" {
  test_type = "HTTP"
  website_name = "My test 2"
  website_url = "https://letshopethisdoesnotexistatall123.com"
  check_rate = 10
  contact_group = ["193689"]
}













