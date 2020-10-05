resource "azurerm_data_factory_integration_runtime_self_hosted" "integration_runtime" {
  name                = var.name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.data_factory_name

  rbac_authorization {
    resource_id = var.resource_id
  }
}