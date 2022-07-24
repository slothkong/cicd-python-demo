terraform {
  required_version = "1.2.5"

  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "eu-central-1"
  }
}

provider "aws" {
    region = "eu-central-1"  
}