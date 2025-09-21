terraform {
  backend "s3" {
    bucket         = "lakshman-trraform"
    key            = "ST/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}