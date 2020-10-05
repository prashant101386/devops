# Azure Databricks  
---  
###  Description:  
- Deploys the base configurations of Databricks that includes a managed(by Databricks) resource group  

###  Dependencies:  
- Resource Group  
- Virtual Network  
- Public Subnet with Databricks delegation, minimum address space required is /26  
- Private Subnet with Databricks delegation, minimum address space required is /26  
- Network Security Groups  

###  Included Resources:  
- Databricks  
- Managed resource group  

###  Required Variables:  
 resource_group_name = "string"    
 location = "string"  
 databricks_name = "string"  
 databricks_sku = "string"  
 databricks_env_tag = "string"  
 vnet_id = "string"  
 public_subnet_name = "string"  
 private_subnet_name = "string"  
 managed_resource_group_name = "string"  
 no_public_ip = bool  

###  Outputs:  
 databricks_name  
  
---  
  
###  Reference Links:  

####  Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/azure-databricks/what-is-azure-databricks  
####  Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/databricks_workspace.html  