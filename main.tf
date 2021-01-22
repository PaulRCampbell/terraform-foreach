resource "aws_instance" "server" {
  for_each = local.instance_data.subnet_config

  ami = "ami-01720b5f421cf0179"

  instance_type = "t2-micro"

  subnet_id = each.value

  tags = {
    Name = "ec2-dev-${each.key}"
  }


}
