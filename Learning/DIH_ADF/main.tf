provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

# Initialize the back end state using the backend-config properties in the Jenkinsfile
terraform {
  backend "azurerm" {
  }
}

####################################################################Remote State Import
data "terraform_remote_state" "dihkvbes" {
  backend = "azurerm"

  config = {
    storage_account_name = var.bes_account_name
    container_name       = var.keyvault_container_name
    key                  = "terraform.tfstate"
    access_key           = var.access_key    
  }
}
data "terraform_remote_state" "dihadlbes" {
  backend = "azurerm"

  config = {
    storage_account_name = var.bes_account_name
    container_name       = var.adls_container_name
    key                  = "terraform.tfstate"
    access_key           = var.access_key        
  }
}
####################################################################Helper Modules

module "data_lake_wait_60_seconds" {
  source = "../../../modules/helper/timer"

  dependency = module.adf_linked_services.linked_service_name
  wait_in_seconds     = "60"
}

####################################################################Resource Group
#module "ddtmw2dihadfrego01" {
  module "shared_adf_resource_group" {
  source = "../../../modules/resourceGroup"

  resource_group_name     = var.resource_group_name
  resource_group_location = "westus2"
  tags                    = var.tags
}
####################################################################Data Factory
#module "ddtmw2dihadf01" {
  module "data_factory" {
  source = "../../../modules/dataFactory"

  data_factory_name   = var.data_factory_name
  resource_group_name = module.shared_adf_resource_group.resource_group_name
  location            = module.shared_adf_resource_group.resource_group_location
  tags                = var.tags
}
####################################################################Key Vault Access
#module "ddtmw2dihadfap01" {
module "data_factory_access_policy" {  
  source = "../../../modules/keyVault/accessPolicy"

  key_vault_id              = "/subscriptions/${var.subscription_id}/resourceGroups/${data.terraform_remote_state.dihkvbes.outputs.resource_group_name}/providers/Microsoft.KeyVault/vaults/${data.terraform_remote_state.dihkvbes.outputs.key_vault_name}"
  tenant_id                 = var.tenant_id
  object_id                 = module.data_factory.principal_account_id
  key_permissions           = []
  secret_permissions        = ["get","list"]
  certificate_permissions   = []
  storage_permissions       = ["get", "list", "set"]
}

####################################################################Linked Services

#module "ddtmw2dihadfkvls01" {
  module "adf_linked_services" {
  source = "../../../modules/dataFactory/linkedServices/keyVault"

  resource_group_name = module.shared_adf_resource_group.resource_group_name
  data_factory_name   = module.data_factory.data_factory_name
  linked_service_name = var.keyvault_linked_service_name
  base_url            = "https://${data.terraform_remote_state.dihkvbes.outputs.key_vault_name}.vault.azure.net/"
  json_path           = "./modules/dataFactory/linkedServices/keyVault"
}

#module "ddtmw2dihadfadlls01" {
module "data_lake" {
  source = "../../../modules/dataFactory/linkedServices/dataLake"
  
  trigger                       = module.data_lake_wait_60_seconds.dependency
  resource_group_name           = module.shared_adf_resource_group.resource_group_name
  data_factory_name             = module.data_factory.data_factory_name
  linked_service_name           = var.data_lake_linked_service_name
  base_url                      = var.data_lake_base_url
  secret_name                   = var.adls_secret_name
  key_vault_linked_service_name = module.adf_linked_services.linked_service_name
  json_path                     = "./modules/dataFactory/linkedServices/dataLake"
}

####################################################################Integration Runtime
module "integration_runtime" {
  source = "../../../modules/dataFactory/integrationRuntimes"
  name                = var.integration_runtime_name
  resource_group_name = module.shared_adf_resource_group.resource_group_name
  data_factory_name   = var.data_factory_name
}
####################################################################Diagnostic Settings

module "diagnostics" {
  source = "../../../modules/diagnosticSetting/logAnalytics"
  
  diagnostic_setting_name = var.diagnostic_setting_name
  target_resource_id = module.data_factory.data_factory_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  log_category              = "ActivityRuns"
  metric_category           = "AllMetrics"
}

module "apply_dih_contributor" {
  source = "../../../modules/roleAssignment"

#  scope = var.subscription_id
  scope = "subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group_name}"
  role_definition_name = "Contributor"
  principal_id = var.contributor_access_objid

  
}
