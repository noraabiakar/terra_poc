include {
  path = find_in_parent_folders()
}

locals {
  standard_vars = read_terragrunt_config("${find_in_parent_folders("terragrunt")}/var.hcl")
}

terraform {
  source = "../..//terraform/storage"
}

inputs = {
  resource_group_name   = local.standard_vars.locals.resource_group
  location              = "West Europe"
  name                  = "tutorial"
  stage                 = "dev"
}