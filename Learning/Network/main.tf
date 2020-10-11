provider "azurerm" {
  version         = "=2.15.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}
####################################################################Resource Group
module "networking" {
  source = "../modules/resourceGroup"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

#####################################################################
module "virtual_network" {
  source = "../modules/Network"

  virtual_network_name     = var.virtual_network_name
  resource_group_name = module.networking.resource_group_name
  virtual_network_location = var.resource_group_location
  subnet_name              = var.subnet_name
}

###################################################################################
/*
####################################################################Network Security Group
module "net_networksecurity" {
  source = "../modules/networkSecurityGroup"

 #nsg_name            = "ddtmw2psdadbnsg01" 
  nsg_name            = var.net_networksecurity_nsg_name
 #nsg_location        = module.ddtmw2dihnetrego01.resource_group_location
  nsg_location        = module.networking.resource_group_location
 #resource_group_name = module.ddtmw2dihnetrego01.resource_group_name
  resource_group_name = module.networking.resource_group_name
  tags                = var.tags
}

#module "ddtmw2psdnsgpublicassociation" {
module "nsg_pubresourcegroup" {
  source = "../../../modules/networkSecurityGroup/association"

 #nsg_id    = module.ddtmw2psdadbnsg01.nsg_id
  nsg_id    = module.net_networksecurity.nsg_id
 #subnet_id = "/subscriptions/29853c40-cb22-4506-974a-ceaa84e31a80/resourceGroups/ddtmw2dihvntreg01-h01s02/providers/Microsoft.Network/virtualNetworks/ddtmw2dihvnt01-h01s02/subnets/ddtmw2dihsnnsvc01"
  subnet_id = var.subnet_id_pub_nsg_pubresourcegroup
}

#module "ddtmw2psdnsgprivateassociation" {
module "nsg_privresourcegroup" {
  source = "../../../modules/networkSecurityGroup/association"

 #nsg_id    = module.ddtmw2psdadbnsg01.nsg_id
  nsg_id    = module.net_networksecurity.nsg_id
 #subnet_id = "/subscriptions/29853c40-cb22-4506-974a-ceaa84e31a80/resourceGroups/ddtmw2dihvntreg01-h01s02/providers/Microsoft.Network/virtualNetworks/ddtmw2dihvnt01-h01s02/subnets/ddtmw2dihsnnsvc02"
  subnet_id = var.subnet_id_priv_nsg_privresourcegroup
  
}
*/
