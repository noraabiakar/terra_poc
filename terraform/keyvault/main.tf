provider "azurerm" {
  features {}
}

resource "azurerm_key_vault" "example" {
  name                = "appins-${var.name}-${var.stage}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = "standard"
}
