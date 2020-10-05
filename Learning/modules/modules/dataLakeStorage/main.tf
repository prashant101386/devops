resource "azurerm_storage_account" "storage_account_gen2" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}