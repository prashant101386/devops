resource "azurerm_key_vault_secret" "key_vault_secret" {
  name         = var.secret_name
  value        = var.secret_value
  key_vault_id = var.key_vault_id
}