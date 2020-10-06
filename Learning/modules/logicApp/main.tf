resource "azurerm_resource_group" "resource_group" {
    name                = var.resource_group_name
    location            = var.resource_group_location
}

resource "azurerm_logic_app_workflow" "logic_app" {
  name                  = var.logic_app_name
  location              = azurerm_resource_group.resource_group.location
  resource_group_name   = azurerm_resource_group.resource_group.name
}