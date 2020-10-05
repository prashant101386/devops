# Azure Storage Account  
--- 
### Description:  
- Creates and deploys an Azure Storage Account  

### Dependencies:  
- Resource Group  

### Included Resources:  
- Storage Account  

### Required Variables:  
 storage_account_name    = "string"  
 resource_group_name     = "string"  
 resource_group_location = "string"  

### Outputs:  
 storage_account_name  
 storage_account_id  

---  

### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview  

#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/storage_account.html  