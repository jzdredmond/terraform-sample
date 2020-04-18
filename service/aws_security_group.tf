resource "aws_security_group" "instance" {
  name = "instance"
  description = "instance sg"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id # resource"aws_vpc""vpc"のid属性を参照

  egress { # security group から外に出る通信のポートの範囲と対象 IP を指定
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
