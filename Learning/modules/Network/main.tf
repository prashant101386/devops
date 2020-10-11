resource "azurerm_virtual_network" "vn" {
  name          = var.virtual_network_name
  address_space = ["10.1.2.0/24"]
  location      = var.virtual_network_location

  subnet {
    subnet_name    = var.subnet_name
    address_prefix = "10.1.2.0/25"
  }
}