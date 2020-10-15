provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

####################################################################Permissions
module "apply_dih_contributor" {
  source = "../../../modules/roleAssignment"

  scope = "subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group_name}"
  role_definition_name = "Contributor"
  principal_id = var.contributor_access_objid
}
####################################################################Kusto Cluster
  
  module "kusto_cluster" {
  source = "../../../modules/dataExplorer/cluster"

    cluster_name = var.kusto_cluster_name
    resource_group_location = module.resource_group.resource_group_location
    resource_group_name = module.resource_group.resource_group_name

    #sku = "standard_D13_v2"
    sku = "Dev(No SLA)_Standard_D11_v2"
    capacity = 1
    #tags     = ""
  }
