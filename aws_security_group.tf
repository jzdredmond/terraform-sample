resource "aws_security_group" "instance" {
  name = "instance"
  description = "instance sg"
  vpc_id = "${aws_vpc.vpc.id}" # resource"aws_vpc""vpc"のid属性を参照

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
