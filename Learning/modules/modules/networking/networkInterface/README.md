# Azure Network Interface  
---  
### Description:  
- Creates and attaches a network interface to a network integrated resource  

### Dependencies:  
- Virtual Network  

### Included Resources:  
- Network Interface  

### Required Variables:  
 network_interface_name = "string"  
 location               = "string"  
 resource_group_name    = "string"  
 subscription_id        = "string"  
 public_ip_name         = "string"  
 subnet_name            = "string"  

### Outputs:  
 network_interface_id  

--- 

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-network-interface  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/network_interface.html  