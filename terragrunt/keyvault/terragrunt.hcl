include {
  path = find_in_parent_folders()
}

locals {
  standard_vars = read_terragrunt_config("${find_in_parent_folders("terragrunt")}/var.hcl")
}

terraform {
  source = "../..//terraform/keyvault"
}

inputs = {
  resource_group_name   = local.standard_vars.locals.resource_group
  tenant_id             = "b7d84abb-da82-415d-801b-d0b26c0f9548"
  location              = "West Europe"
  name                  = "tutorial"
  stage                 = "dev"
}