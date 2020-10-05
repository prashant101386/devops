resource "azurerm_key_vault_key" "key" {
  name         = var.key_name
  key_vault_id = var.key_vault_id
  key_type     = "RSA"#Pass this up as a variable
  key_size     = 2048#Pass this up as a variable

  key_opts = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]
}