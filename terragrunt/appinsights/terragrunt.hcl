include {
  path = find_in_parent_folders()
}

locals {
  standard_vars = read_terragrunt_config("${find_in_parent_folders("terragrunt")}/var.hcl")
}

terraform {
  source = "../../terraform"
}

inputs = {
  resource_group_name   = local.standard_vars.locals.resource_group
  location              = "West Europe"
  tenant_id             = "b7d84abb-da82-415d-801b-d0b26c0f9548"
  name                  = "tutorial"
  stage                 = "dev"
}