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
  resource_group_location = var.resource_group_location
  }
####################################################################Logic App
  module "logic_app" {
  source = "../modules/logicApp"

  logic_app_name          = var.logic_app_name
  resource_group_name     = module.shared_adf_resource_group.resource_group_name
  resource_group_location = module.shared_adf_resource_group.resource_group_location

 }

 ######################################################################Key Vault Access

 ####################################################################Key Vault Access
module "logic_app_access_policy" {  
  source = "../modules/keyVault/accessPolicy"

  key_vault_id              = var.key_vault_id
  tenant_id                 = var.tenant_id
  object_id                 = var.object_id
  key_permissions           = []
  secret_permissions        = ["get","list"]
  certificate_permissions   = []
  storage_permissions       = ["get", "list", "set"]
}



