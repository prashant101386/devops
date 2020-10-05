resource "azurerm_dashboard" "my-board" {
  name                = var.dashboard_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  tags = var.tags
  dashboard_properties = templatefile(var.template_file)
}