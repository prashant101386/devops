resource "azurerm_storage_data_lake_gen2_filesystem" "gen2_filesystem" {
  name               = var.filesystem_name
  storage_account_id = var.storage_account_id
}