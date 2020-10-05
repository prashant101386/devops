# Azure Data Factory - Key Vault Linked Service  
---  
### Description:   
- Deploys a Data Factory linked service to an Azure Key Vault  
- Resource is currently not available through Terraform! This resource is deployed by calling a Terraform local-exec to execute an Azure CLI command. The Azure CLI command uses the deploy.json file to deploy the resource to Azure.  

### Dependencies:  
- Data Factory  
- Azure Key Vault  

### Included Resources:  
- Databricks Linked Service  

### Required Variables:  
 resource_group_name = "string"  
 data_factory_name   = "string"  
 linked_service_name = "string"  
 base_url            = "string"  
 json_path           = "string"  

### Outputs:  

### Reference Links:  

### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/data-factory/concepts-linked-services  
### Terraform Resource Provider:  
https://www.terraform.io/docs/provisioners/local-exec.html  