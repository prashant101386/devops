resource "azurerm_subnet" "subnet_delegation" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  address_prefix       = var.subnet_prefix
  virtual_network_name = var.virtual_network_name
  service_endpoints    = [
    "Microsoft.KeyVault",
  ]

  delegation {
    name = var.delegation_name

    service_delegation {
      name    = "Microsoft.Databricks/workspaces"
      actions = [
        #"Microsoft.Network/networkinterfaces/*", 
        #"Microsoft.Network/virtualNetworks/subnets/action", 
        "Microsoft.Network/virtualNetworks/subnets/join/action", 
        "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action", 
        "Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action",]
    }
  }
}