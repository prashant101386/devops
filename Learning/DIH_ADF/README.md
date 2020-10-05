# Data Intellegence Hub Platform - Azure Data Factory  
---  

###  Dependencies
  Deployment order #4
  Dependencies: Back end state, key vault, ADLS

###  Description:  
This template will deploy Azure Data Factory with the following configurations:  
- Key vault access policy  
  - The access policy is configured using an ADF managed identity, this is currently the only supported method for providing Data Factory access rights  
- A Data Factory linked service to the ddtmw2dihkv01(Azure Key Vault) resource  
  - This provides the ADF managed identity the ability to use key vault secrets to access ADLS    
- A Data Factory linked service to the ddtmw2dihadl01(Azure Data Lake Storage) resource  
  - This configures the connection between ADF and ADLS using the key vault secret that contains the ADLS SAS key  


###  Dependencies:  
- ddtmw2dihbesrego01  
- ddtmw2dihkvrego01  
- ddtmw2dihadlrego01    

### Modules  
- Resource Group 
- Data - Key Vault  
- Data - Data Lake  
- Helper - Timer   
- Data Factory    
- Data Factory - Linked Services - Key Vault  
- Data Factory - Linked Services - Data Lake  
- Key Vault - Access Policy  

###  Required Variables:  
 subscription_id = "string"  
 client_id       = "string"  
 client_secret   = "string"  
 tenant_id       = "string"  
 tags            = "string"  
 access_key      = "string"   

###  Outputs:  
