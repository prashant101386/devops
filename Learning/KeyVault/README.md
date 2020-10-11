# Data Intellegence Hub Platform - Azure Key Vault  
---  

###  Description:  
    Used for BYOK encryption in the data lake

### Dependencies
    Deployment order #2
    Dependencies: Back end state resource group
    
### Known issues
Purge protection and soft delete (7-14 days)
any secrets, certificates, keys, etc. that has a duplicate name
Microsoft has a cool down period of 30+ days where duplicates will fail until that period passes

Note: To obtain the storage access_key (supplied by Jenkins piplein for this setting: -backend-config="access_key=$TF_VAR_backend_state" ) you need to open the Azure Portal and go to the storage account (e.g. ddtmw2dihbessa01) and pull it from the access keys setion

Note 2: You need to upload the certificatess to the ddtmw2dihkv########

### Modules  
- Resource Group  
- Data (Remote State)  
- Helper - Random Integer  
- Key Vault  
- Key Vault - Access Policy  

###  Required Variables:  
 subscription_id = "string"  
 client_id       = "string"  
 client_secret   = "string"  
 tenant_id       = "string"  
 tags            = "string"  
 access_key      = "string"  


###  Outputs:  
 key_vault_name  
 resource_group_name  