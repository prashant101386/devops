# Azure Key Vault
---
###  Description:  
- Deploys a default instance of Azure Key Vault  

### Dependencies:  
- Resource Group

### Included Resources:  
- Key Vault

###  Required Variables:  
 key_vault_name                   = "string"  
 location                         = "string"  
 resource_group_name              = "string"  
 enabled_for_disk_encryption      = bool  
 enabled_for_template_deployment  = bool  
 soft_delete_enabled              = bool  
 purge_protection_enabled         = bool  
 tenant_id                        = "string"  
 sku_name                         = "string"  
 tags                             = "string"  

###  Outputs:  
 key_vault_name  
 resource_group_name   
 key_vault_uri  
 key_vault_id  
  
---  
  
###  Reference Links:    

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/key-vault/general/overview  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/key_vault.html  