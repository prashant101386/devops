resource "azurerm_virtual_network" "vn" {
  name          = var.virtual_network_name
  resource_group_name = var.resource_group_name
  address_space = ["10.1.2.0/24"]
  location      = var.resource_group_location

  subnet {
    name    = var.subnet_name
    address_prefix = "10.1.2.0/25"
  }
}