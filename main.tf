module "pipelines" {

  source = "./local-modules/data-pipeline"

  for_each = local.instance_data.subnet_config


  subnet_id = each.value

  tags = {
    Name = "ec2-dev-${each.key}"
  }


}
