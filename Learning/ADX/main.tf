provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

####################################################################Kusto Cluster
  
  module "kusto_cluster" {
  source = "../modules/dataExplorer/cluster"

    cluster_name = var.kusto_cluster_name
    resource_group_location = var.resource_group_location
    resource_group_name = var.resource_group_name

    #sku = "standard_D13_v2"
    sku = "Dev(No SLA)_Standard_D11_v2"
    capacity = 1
    #tags     = ""
  }
