output "certificate_name" {
  value = azurerm_key_vault_certificate.key_vault_certificate.name
}

output "certificate_version" {
  value = azurerm_key_vault_certificate.key_vault_certificate.version
}