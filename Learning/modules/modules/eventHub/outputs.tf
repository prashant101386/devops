output "event_hub_name" {
  value =  azurerm_eventhub.event_hub.name
}

output "event_hub_namespace" {
  value = azurerm_eventhub_namespace.event_hub_namespace.name
}