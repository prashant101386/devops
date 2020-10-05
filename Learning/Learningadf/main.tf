provider "azurerm" {
    version         = "=2.0.0"
    subscription_id = var.subscription_id
    client_id       = var.client_id
    client_secret   = var.client_secret
    tenant_id       = var.tenant_id
    features{}
}
####################################################################################Remote State Import
data "terraform_remote_state" "ddtmw2dihkvbes" {
    backend = "azurerm"

    config = {
        storage_account_name = "ddtmw2dihbessa01"
        container_name       = "ddtmw2dihbeskv01tfstate"
        key                  = "terraform.tfstate"
        access_key           = var.access_key
    }
}
data "terraform_remote_state" "ddtmw2dihadlbes" {
    backend "azurerm"

    config = {
        storage_account_name = "ddtmw2dihbessa01"
        container_name       = "ddtmw2dihbesadl01tfstate"
        key                  = "terraform.tfstate"
        access_key           = var.access_key
    }
}
####################################################################################Helper Modules
module "ddtmw2dihadfadlls01_wait_60_seconds" {
    source = "../../../modules/helper/timer"

    linked_service_name = module.ddtmw2dihadfkvls01.linked_service_name
    wait_in_seconds     = "60"
}
####################################################################################Resource Group
module "Learningadf" {
    source = "../../../modules/resourceGroup"

    resource_group_name     = "Learningadf"
    resource_group_location = "westindia"
    tags                    = var.tags
}
#####################################################################################Data Factory
module "ddtmw2dihadf01" {
    source = "../../../modules/dataFactory"

    data_factory_name   = "ddtmw2dihadf01"
    resource_group_name = "module.Learningadf.resource_group_name"
    location            = "module.Learningadf.resource_group_location"
    tags                = var.tags
}
#####################################################################################Key Vault Access
module "ddtmw2dihadfap01" {
    source = "../../../modules/keyVault/accessPolicy"

    key_vault_id            = "/subscriptions/${var.subscription.id}/resourceGroups/${data.terraform_remote_state.ddtmw2dihkvbes.outputs.resource_group_name}/providers/Microsoft.KeyVault/vaults/${data.terraform_remote_state.ddtmw2dihkvbes.outputs.key_vault_name}"
    tenant_id               = var.tenant_id
    object_id               = module.ddtmw2dihadf01.principal_account_id
    key_permissions         = []
    secret_permissions      = ["get","list"]
    certificate_permissions = []
    storage_permissions     = ["get","list","set"]
}
#####################################################################################Linked Services
module "ddtmw2dihadfkvls01" {
    source = "../../../modules/dataFactory/linkedServices/keyVault"

    resource_group_name           = module.Learningadf.resource_group_name
    data_factory_name             = module.ddtmw2dihadf01.data_factory_name
    linked_service_name           = "ddtmw2dihadfkvls01"
    base_url                      = "https://ddtmw2dihadl01.dfs.core.windows.net/"
    secret_name                   = data.terraform_remote_state.ddtmw2dihadlbes.outputs.secret_name
    key_vault_linked_service_name = module.ddtmw2dihadfkvls01.linked_service_name
    json_path                     = "./modules/dataFactory/linkedServices/dataLake"
}
#####################################################################################Diagnostic Settings

#####################################################################################Firewall Rules


config = {
    storage_account_name = var.bes_account_name
    container_name       = var.bes_container_name
    key                  = "terraform.tfstate"
    access_key           = var.access_key
}