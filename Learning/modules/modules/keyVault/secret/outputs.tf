output "secret_name" {
  value = azurerm_key_vault_secret.key_vault_secret.name
}

output "secret_version" {
  value = azurerm_key_vault_secret.key_vault_secret.version
}
