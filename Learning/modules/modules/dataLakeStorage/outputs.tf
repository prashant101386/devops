output "storage_account_name" {
  value = azurerm_storage_account.storage_account_gen2.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storage_account_gen2.id
}


output "principal_account_id" {
  value = azurerm_storage_account.storage_account_gen2.identity.0.principal_id
  sensitive = true
}

output "storage_account_url" {
  value = azurerm_storage_account.storage_account_gen2.primary_blob_endpoint
}

output "primary_access_key" {
  value = azurerm_storage_account.storage_account_gen2.primary_access_key
  sensitive = true
}



