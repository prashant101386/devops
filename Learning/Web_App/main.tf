provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}
/*
####################################################################Resource Group
  module "resource_group" {
  source = "../modules/resourceGroup"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  }
  */
####################################################################App Service
  module "app_service" {
  source = "../modules/webApp"

  app_service_plan        = var.app_service_plan
  app_service_name        = var.app_service_name
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

################################################################################Key Vault Access

module "App_service_access_policy" {  
  source = "../modules/keyVault/accessPolicy"

  key_vault_id              = var.key_vault_id
  tenant_id                 = var.tenant_id
  object_id                 = module.app_service.principal_account_id
  key_permissions           = []
  secret_permissions        = ["get","list"]
  certificate_permissions   = []
  storage_permissions       = ["get", "list", "set"]
}

