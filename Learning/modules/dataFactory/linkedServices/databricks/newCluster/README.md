# Azure Data Factory - Databricks Linked Service - New Cluster  
---  
### Description:  
- Deploys a Data Factory linked service to a new cluster in Azure Databricks  
- Resource is currently not available through Terraform! This resource is deployed by calling a Terraform local-exec to execute an Azure CLI command. The Azure CLI command uses the deploy.json file to deploy the resource to Azure.  

### Dependencies:  
- Data Factory  
- Databricks  

### Included Resources:  
- Databricks Linked Service  

### Required Variables:  
 resource_group_name           = "string"  
 data_factory_name             = "string"  
 linked_service_name           = "string"  
 domain                        = "string"  
 secret_name                   = "string"  
 key_vault_linked_service_name = "string"  
 cluster_node_type             = "string"  
 number_of_workers             = integer  
 cluster_version               = "string"  

### Outputs:  

### Reference Links:  

### Microsoft Documentation:  
https://docs.microsoft.com/en-us/azure/data-factory/concepts-linked-services  
### Terraform Resource Provider:  
https://www.terraform.io/docs/provisioners/local-exec.html  