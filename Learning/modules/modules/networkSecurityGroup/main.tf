resource "azurerm_network_security_group" "netsg" {
  name                = var.nsg_name
  location            = var.nsg_location
  resource_group_name = var.resource_group_name
  tags = var.tags
}