# Azure Network Security Group - Security Rule  
---  
### Description:  
- Creates and deploys a Network Security Rule to a Network Security Group  

### Dependencies:  
- Network Security Group  

### Included Resources:  
- Network Security Rule  

### Required Variables:  
 rule_name           = "string"  
 rule_priority       = integer  
 rule_direction      = "string"  
 rule_access         = "string"  
 rule_protocol       = "string"  
 rule_source_port    = "string"  
 rule_dest_port      = "string"  
 rule_source_pref    = "string"  
 rule_dest_pref      = "string"  
 nsg_name            = "string"  
 resource_group_name = "string"  

### Outputs:  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/virtual-network/security-overview#security-rules  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/network_security_rule.html  