
variable "resource_group_name" {
  description = "Resource group for shared ADF"
}
variable "logic_app_name" {}

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
