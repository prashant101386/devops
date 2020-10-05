resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  address_prefix       = var.subnet_prefix
  virtual_network_name = var.virtual_network_name
  service_endpoints    = [
    "Microsoft.KeyVault",
  ]
}