
variable "resource_group_name" {
  description = "Resource group for shared ADF"
}

variable "bes_resource_group_name" {

}

variable "bes_account_name" {

}

variable "contributor_access_objid" {}

variable "access_key" {

}

variable "integration_runtime_name" {}

variable "adls_secret_name" {

}
variable "diagnostic_setting_name" {}

variable "data_lake_base_url" {}

variable "keyvault_linked_service_name" {}
          
variable "data_lake_linked_service_name" {}

variable "keyvault_container_name" {

}

variable "adls_container_name" {

}

variable "data_factory_name" {}

variable "subscription_id" {
  description = "Enter subscription ID for provisioning resources in Azure" 
}

variable "client_id" {
  description = "Enter client ID for application created in Azure AD" 
}

variable "client_secret" {
  description = "Enter Client secret for application in Azure AD" 
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD" 
}

variable "tags" {
  
}

variable "backend_state" {
  
}

variable "log_analytics_workspace_id" {
  description = "(optional) describe your variable"
}