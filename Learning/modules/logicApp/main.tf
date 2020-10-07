resource "azurerm_logic_app_workflow" "logic_app" {
  name                    = var.logic_app_name
  resource_group_location = "westus2"
  resource_group_name     = shared_adf_resource_group.resource_group_name
}