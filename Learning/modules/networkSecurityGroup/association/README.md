# Azure Network Security Group - Association  
---  
### Description:  
- Associates a Network Security Group to a virtual network subnet  

### Dependencies:  
- Virtual Network  
- Subnet  
- Network Security Group  

### Included Resources:  
- Network Security Group Association  

### Required Variables:  
 nsg_id    = "string"  
 subnet_id = "string"  

### Outputs:  
 subnet_id  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/security-overview  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/subnet_network_security_group_association.html  