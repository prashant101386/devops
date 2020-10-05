# Azure Storage Account - Customer Managed Key  
---  
### Description:  
- Creates a Storage Account Customer Managed Encryption Key  

### Dependencies:  
- Storage Account  

### Included Resources:  
- Storage Account Customer Managed Key  

### Required Variables:  
storage_account_id = "string"  
key_vault_id       = "string"  
key_name           = "string"  
key_version        = "string"  

### Outputs:  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/storage/common/storage-service-encryption  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/storage_account_customer_managed_key.html  