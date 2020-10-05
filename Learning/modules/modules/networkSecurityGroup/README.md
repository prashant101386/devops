# Azure Network Security Group
---  
### Description:  
- Creates and deploys a Network Security Group  

### Dependencies:  
- Resource Group  

### Included Resources:  

### Required Variables:  
 nsg_name            = "string"  
 nsg_location        = "string"  
 resource_group_name = "string"  

### Outputs:  
 nsg_name  
 nsg_id  
 resource_group_name  
 tags  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/security-overview  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/network_security_group.html  