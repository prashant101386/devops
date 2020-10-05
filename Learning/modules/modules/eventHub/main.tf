resource "azurerm_eventhub_namespace" "event_hub_namespace" {
  name                = var.event_hub_namespace
  location            = var.event_hub_location
  resource_group_name = var.resource_group_name
  sku                 = var.event_hub_sku
  capacity            = var.event_hub_capacity

  tags = {
    environment = var.environment
  }
}

resource "azurerm_eventhub" "event_hub" {
  name                = var.event_hub_name
  namespace_name      = azurerm_eventhub_namespace.event_hub_namespace.name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}