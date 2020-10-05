# Azure Data Factory - ADLS Gen 2 Linked Service  
---  
### Description:  
- Deploys a Data Factory linked service to an Azure Data Lake Storage account  
- This resource is available in Terraform but lacks the required functionality to deploy using a Key vault and secret. This resource is deployed by calling a Terraform local-exec to execute an Azure CLI command. The Azure CLI command uses the deploy.json file to deploy the resource to Azure.  

### Dependencies:  
- Data Factory  
- Azure Data Lake Storage Gen 2  

### Included Resources:   
- Databricks Linked Service  

### Required Variables:  
 resource_group_name           = "string"  
 data_factory_name             = "string"  
 linked_service_name           = "string"  
 base_url                      = "string"  
 secret_name                   = "string"  
 key_vault_linked_service_name = "string"  
 json_path                     = "string"  
 trigger                       = "string"  

### Outputs:  

### Reference Links:  

### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/data-factory/concepts-linked-services  
### Terraform Resource Provider:  
https://www.terraform.io/docs/provisioners/local-exec.html  