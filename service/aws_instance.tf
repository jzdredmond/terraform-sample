resource "aws_instance" "sample" {
  ami = "ami-0e37e42dff65024ae"
  instance_type = "t2.small"
  monitoring = true
  iam_instance_profile = data.terraform_remote_state.aws_iam.outputs.ecs_instance_profile_name # 他リソースの属性の参照
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_1_id # 他リソースの属性の参照
  user_data = file("./user_data.sh")
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.instance.id,
  ]

  root_block_device {
    volume_size = "30"
    volume_type = "gp2"
  }

  tags = {
    Name = "tf-sample"
  }
}
