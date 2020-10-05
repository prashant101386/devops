output "nsg_name" {
  value = azurerm_network_security_group.netsg.name
}

output "nsg_id" {
  value = azurerm_network_security_group.netsg.id
}

output "resource_group_name" {
  value = azurerm_network_security_group.netsg.resource_group_name
}

output "tags" {
  value = azurerm_network_security_group.netsg.tags
}
