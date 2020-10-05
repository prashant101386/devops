output "subnet_name" {
  value = azurerm_subnet.subnet_delegation.name
  description = "Provides the subnet name after deployment. Can be used for nsg assocations."
}
