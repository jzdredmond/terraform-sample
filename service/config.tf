terraform {
  backend "s3" {
    bucket = "my-sample-terraform-ed"
    key = "sample/service/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
