provider "azurerm" {
  features {}
}

resource "azurerm_machine_learning_workspace" "example" {
  name                    = "aml-${var.name}-${var.stage}"
  location                = var.location
  resource_group_name     = var.resource_group_name
  application_insights_id = var.app_insights_id
  key_vault_id            = var.key_vault_id
  storage_account_id      = var.storage_account_id

  identity {
    type = "SystemAssigned"
  }
}
