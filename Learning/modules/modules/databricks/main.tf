provider "azurerm" {
    version = ">= 2.11.0"
    features{}
}

resource "azurerm_databricks_workspace" "databricks" {
  name                = var.databricks_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.databricks_sku
  
  custom_parameters {
    
    virtual_network_id  = var.vnet_id
    public_subnet_name  = var.public_subnet_name
    private_subnet_name = var.private_subnet_name

  }

  managed_resource_group_name = "${var.managed_resource_group_name}_managed"#Add this as a variable

  tags = var.tags
}