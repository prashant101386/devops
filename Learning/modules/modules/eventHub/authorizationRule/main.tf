resource "azurerm_eventhub_namespace_authorization_rule" "authorization_rule" {
  name                = var.authorization_rule_name
  namespace_name      = var.event_hub_namespace
  resource_group_name = var.resource_group_name
  listen              = true
  send                = true
  manage              = true
}