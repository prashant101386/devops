# Azure Data Factory  
---  
### Description:  
- Deploys the base configurations of Data Factory

### Dependencies:
- Resource Group

### Included Resources:  
- Data Factory

### Required Variables:  
 resource_group_name  = "string"  
 location             = "string"  
 data_factory_name    = "string"  
 tags                 = "list(string)"  

### Outputs:  
 resource_group_name  
 location  
 data_factory_name  
 data_factory_id  
 principal_account_id  
  
---  
  
### Reference Links:  

#### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/data-factory/introduction  
#### Terraform Resource Provider:  
https://www.terraform.io/docs/providers/azurerm/r/data_factory.html  