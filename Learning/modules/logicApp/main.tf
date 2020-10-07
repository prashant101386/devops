resource "azurerm_logic_app_workflow" "logic_app" {
  name                    = var.logic_app_name
  location                = "westus2"
  resource_group_name     = var.resource_group_name
}