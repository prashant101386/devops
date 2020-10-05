resource "azurerm_data_factory_pipeline" "dataFactory_Pipeline" {
  name                = var.pipeline_name
  resource_group_name = var.resource_group_name
  data_factory_name   = var.datafactory_name
  annotations         = var.annotations
}
