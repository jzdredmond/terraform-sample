terraform {
  backend "s3" {
    bucket = "terraform-sample-ed" # ここの名前は各自で考えましょう
    key = "terraform-sample/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
