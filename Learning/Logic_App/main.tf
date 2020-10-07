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
  }
####################################################################Logic App
  module "logic_app" {
  source = "../modules/logicApp"

  logic_app_name          = var.logic_app_name
  resource_group_name     = module.shared_adf_resource_group.resource_group_name
  resource_group_location = module.shared_adf_resource_group.resource_group_location
}


