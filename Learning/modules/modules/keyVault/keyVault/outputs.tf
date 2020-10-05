output "key_vault_name" {
  value = azurerm_key_vault.key_vault.name
}

output "resource_group_name" {#Look in to if this is still needed
  value = azurerm_key_vault.key_vault.resource_group_name
}

output "key_vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}

output "key_vault_id" {
  value = azurerm_key_vault.key_vault.id
}
