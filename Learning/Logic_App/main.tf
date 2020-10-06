provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

####################################################################Helper Modules

####################################################################Resource Group
  module "shared_adf_resource_group" {
  source = "../modules/resourceGroup"

  resource_group_name     = var.resource_group_name
  resource_group_location = "westus2"
  tags                    = var.tags
}
####################################################################Data Factory
  module "data_factory" {
  source = "../modules/dataFactory"

  data_factory_name   = var.data_factory_name
  resource_group_name = module.shared_adf_resource_group.resource_group_name
  location            = module.shared_adf_resource_group.resource_group_location
  tags                = var.tags
}
####################################################################Integration Runtime
module "integration_runtime" {
  source = "../modules/dataFactory/integrationRuntimes"
  name                = var.integration_runtime_name
  resource_group_name = module.shared_adf_resource_group.resource_group_name
  data_factory_name   = var.data_factory_name
}

