resource "aws_instance" "server" {

  ami = "ami-01720b5f421cf0179"

  instance_type = "t2-micro"

  subnet_id = var.subnet_id

  tags = var.tags

}
