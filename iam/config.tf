terraform {
  backend "s3" {
    bucket = "container-era-terraform-sample"
    key = "sample/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
