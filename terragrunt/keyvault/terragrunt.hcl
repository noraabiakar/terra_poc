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
  tenant_id             = "16b3c013-d300-468d-ac64-7eda0820b6d3"
  location              = "West Europe"
  name                  = "tutorial"
  stage                 = "dev2"
}
