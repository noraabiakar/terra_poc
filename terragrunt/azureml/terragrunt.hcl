include {
  path = find_in_parent_folders()
}

locals {
  standard_vars = read_terragrunt_config("${find_in_parent_folders("terragrunt")}/var.hcl")
}

terraform {
  source = "../../terraform"
}

dependency "storage" {
  config_path = "../storage"
}
dependency "keyvault" {
  config_path = "../keyvault"
}

dependency "appinsights" {
  config_path = "../appinsights"
}

dependencies {
  paths = ["../keyvault", "../storage", "../appinsights"]
}


inputs = {
  resource_group_name   = local.standard_vars.locals.resource_group
  storage_account_id    = dependency.storage.outputs.storage_id
  key_vault_id          = dependency.keyvault.outputs.key_vault_id
  app_insights_id       = dependency.appinsights.outputs.appinsights_id
  location              = "West Europe"
  name                  = "tutorial"
  stage                 = "dev"
}
