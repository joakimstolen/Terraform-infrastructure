provider "statuscake" {
  username = "joakimstoelenhotmailcom"
  //apikey = "12345abcde"
}


resource "statuscake_test" "google" {
  test_type = "HTTP"
  website_name = "My test 3"
  website_url = "https://letshopethisdoesnotexistatall.com"
  check_rate = 10
  contact_group = ["193689"]
}













