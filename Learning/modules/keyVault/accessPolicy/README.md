# Azure Key Vault - Access Policy  
---
### Description:  
- Deploys an Azure Key Vault access policy based on the object id provided  

### Dependencies:  
- Azure Key Vault  
- Object that is target for the access policy  

### Included Resources:  
- Key Vault Access Policy  

### Required Variables:  
 key_vault_id            = "string"  
 tenant_id               = "string"  
 object_id               = "string"  
 certificate_permissions = "list(string)"  
 key_permissions         = "list(string)"  
 secret_permissions      = "list(string)"  

### Outputs:  
 key_vault_id  
  
---  
  
### Reference Links:  

#### Microsoft Documentation:  

#### Terraform Resource Provider:  
