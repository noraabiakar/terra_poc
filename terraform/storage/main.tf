provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "example" {
  name                     = "sto${var.name}${var.stage}"
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
