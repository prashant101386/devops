# Azure Virtual Network - Subnet with Delegation  
---  
### Description:  
- Deploys and Azure Virtual Network Subnet with subnet delegation.  

### Dependencies:  
- Azure Virtual Network  

### Included Resources:  
- Subnet with delegation  

### Required Variables:  
 delegation_name      = "string"  
 subnet_name          = "string"  
 subnet_prefix        = "string"  
 virtual_network_name = "string"  
 resource_group_name  = "string"  

### Outputs:  
 subnet_name  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/subnet-delegation-overview  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/subnet.html  