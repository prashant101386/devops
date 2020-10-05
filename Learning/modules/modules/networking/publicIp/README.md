# Azure Public IP Address
---  
### Description:  
- Creates and attaches a Public IP address to a network interface  

### Dependencies:  
- Network Interface  

#### Included Resources:  
- Public IP Address  

### Required Variables:  
 public_ip_name      = "string"  
 location            = "string"  
 resource_group_name = "string"  
 domain_name_label   = "string"  

### Outputs:  
 public_ip_name  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/public-ip-addresses  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/public_ip.html  