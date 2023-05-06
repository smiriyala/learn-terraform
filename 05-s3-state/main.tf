terraform {
  backend "s3" {
    bucket = "devopsterraform-s71"
    key = "/05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}