resource "azurerm_iothub" "plant_iot" {
  name                = var.iot_hub_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    name = "S1"
    capacity = "1"
  }
  

  tags = var.tags
}