terraform {
  backend "s3" {
    bucket = "terraform-surjan123"
    key    = "terraform/dev/helloapp"
    region = "us-east-1"
    profile = "surjan"
  }
}
