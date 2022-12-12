provider "azurerm" {
  features {}
}

resource "azurerm_application_insights" "example" {
  name                = "appins-${var.name}-${var.stage}"
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}
