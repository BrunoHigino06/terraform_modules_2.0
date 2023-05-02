terraform {
  backend "s3" {
    bucket = "mybucket2023050211111"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}