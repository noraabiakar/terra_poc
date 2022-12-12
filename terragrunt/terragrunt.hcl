generate "azure_backend" {
  path      = "remote_state.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "azurerm" {
    resource_group_name  = "Default-ActivityLogAlerts"
    storage_account_name = "avopstfstate"
    container_name       = "avopstfstatecont"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
    access_key           = "${get_env("ARM_ACCESS_KEY","")}"
    subscription_id      = "b7d84abb-da82-415d-801b-d0b26c0f9548"
  }
}
EOF
}