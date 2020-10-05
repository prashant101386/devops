
resource "azurerm_kusto_database" "database" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  cluster_name        = var.cluster_name

  hot_cache_period   = var.hot_cache_period
  soft_delete_period = var.soft_delete_period
}