locals {
  instance_data = jsondecode(file("${path.module}/config/data.json"))

  required_instance_list = [for k, v in local.instance_data.subnet_config : v if v.is_required == "true"]
  required_instances     = { for v in local.required_instance_list : v.subnet_id => v }

  tag_team_name     = local.instance_data.tags.team_name
  tag_business_unit = local.instance_data.tags.business_unit
  tag_organization  = lookup(local.instance_data.tags, "Organization", "BigCompanyOrg")
}


output "json_obj" {
  value = local.instance_data
}

output "tag_team" {
  value = local.tag_team_name
}

output "tag_business_unit" {
  value = local.tag_business_unit
}

output "tag_org" {
  value = local.tag_organization
}

output "required_instances" {
  value = local.required_instances

}
