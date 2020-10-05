# Azure Virtual Network  
---  
### Description:  
- Deploys an Azure Virtual Network

### Dependencies:  
- Resource Group
  
### Included Resources:  
- Virtual Network  

### Required Variables:  
 resource_group_name  = "string"  
 location             = "string"  
 virtual_network_name = "string"  
 address_space        = "string"  
 tags                 = "string"  

### Outputs:  
 virtual_network_name  
 location  
 resource_group_name  

---  
  
### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/virtual_network.html  