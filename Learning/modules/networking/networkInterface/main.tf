resource "azurerm_network_interface" "network_interface" {
  name                = var.network_interface_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/${var.subscription_id}/resourceGroups/eusdevbaserg/providers/Microsoft.Network/virtualNetworks/deveusbasevnet/subnets/${var.subnet_name}"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "/subscriptions/ae833955-ece5-4381-aa9f-bca446a3582d/resourceGroups/eusdevbaserg/providers/Microsoft.Network/publicIPAddresses/${var.public_ip_name}"
  }
}