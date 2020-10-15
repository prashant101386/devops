resource "azurerm_kusto_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku {
    name     = var.sku
    capacity = var.capacity
  }

  identity {
    type = "SystemAssigned"
  }
}