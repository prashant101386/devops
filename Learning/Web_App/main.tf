provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

####################################################################Resource Group
  module "resource_group" {
  source = "../modules/resourceGroup"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  }
####################################################################App Service
  module "app_service" {
  source = "../modules/webApp"

  app_service_plan        = var.app_service_plan
  app_service_name        = var.app_service_name
  resource_group_name     = module.shared_adf_resource_group.resource_group_name
  resource_group_location = module.shared_adf_resource_group.resource_group_location
}


