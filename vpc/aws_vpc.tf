resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16" #IP アドレスの設定
  instance_tenancy = "default" #VPC 内で立ち上げるインスタンスを占有するかどうか
  enable_dns_support = true #DNS(Domain Name System)名前解決がサポートされるか
  enable_dns_hostnames = true #VPC 内で起動するインスタンスがパブリックな DNS ホスト名を取得するかどうかを設定

  tags = {
    Name = "tf-sample"
  }
}
