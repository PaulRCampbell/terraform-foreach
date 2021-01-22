locals {
  instance_data = jsondecode(file("${path.module}/data.json"))
}
