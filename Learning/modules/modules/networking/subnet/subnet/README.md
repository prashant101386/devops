# Azure Virtual Network - Subnet
---  
### Description:  
- Deploys and Azure Virtual Network Subnet  

### Dependencies:  
- Azure Virtual Network  

### Included Resources:  
- Subnet  

### Required Variables:  
 subnet_name          = "string"  
 subnet_prefix        = "string"  
 virtual_network_name = "string"  
 resource_group_name  = "string"  

### Outputs:  
 subnet_name  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/subnet.html  