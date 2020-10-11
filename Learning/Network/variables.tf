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

/*
variable "log_analytics_workspace_id" {
  description = "(optional) describe your variable"
  type = string
}

variable "networking_resource_group_name" {
  description = "(optional) describe your variable"
  type = string
}


variable "net_networksecurity_nsg_name" {
  description = "(optional) describe your variable"
  type = string
}

variable "subnet_id_pub_nsg_pubresourcegroup" {
  description = "(optional) describe your variable"
  type = string
}

variable "subnet_id_priv_nsg_privresourcegroup" {
  description = "(optional) describe your variable"
  type = string
}
*/

variable "resource_group_name" {
  description = "(optional) describe your variable"
  type = string
}

variable "resource_group_location" {}
variable "subnet_name" {}
variable "virtual_network_name" {}
