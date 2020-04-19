terraform {
backend "s3" {
bucket = "terraform-sample-ed"
key = "terraform-sample/service/terraform.tfstate"
region = "ap-northeast-1"
}
}
provider "aws" {
region = "ap-northeast-1"
}
