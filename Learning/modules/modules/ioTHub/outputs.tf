output "resource_group_name" {
  value = azurerm_data_factory.data_factory.name
}

output "location" {
  value = azurerm_data_factory.data_factory.location
}

output "data_factory_name" {
  value = azurerm_data_factory.data_factory.name
}

output "data_factory_id" {
  value = azurerm_data_factory.data_factory.id
}

output "principal_account_id" {
  value = azurerm_data_factory.data_factory.identity.0.principal_id
}

