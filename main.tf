module "pipelines" {

  source = "./local-modules/data-pipeline"

  for_each = local.required_instances

  subnet_id = each.value.subnet_id

  tags = {
    Name          = "pc-ec2-dev-${each.key}",
    team_name     = local.tag_team_name,
    business_unit = local.tag_business_unit,
    orgaization   = local.tag_organization
  }


}

