Description:
- Deploys the base configurations of Azure Data Lake Storage Gen 2

Dependencies:
- Resource Group

Included Resources:
- Data Lake Storage account Gen 2

Required Variables:
- resource_group_name     = "string"  
- resource_group_location = "string"  
- storage_account_name    = "string"  

Outputs:
- storage_account_name  
- storage_account_id  
- principal_account_id  
- storage_account_url  
- primary_access_key  


Reference Links:

Microsoft Documentation:


Terraform Resource Provider:
