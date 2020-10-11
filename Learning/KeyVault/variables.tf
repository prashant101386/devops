variable "resource_group_name"{
  description = "Passed in as a parameter from the <env>input.vars file"
  type = string
}

variable "key_vault_name"{
  description = "Passed in as a parameter from the <env>input.vars file"
  type = string
}

variable "keyVaultName" {
  description = "Passed as a parameter from Jenkins to Terraform"
}

variable "iacCertificateName" {
  description = "Passed as a parameter from Jenkins to Terraform"
}

# Access key for storage container where the back end state file will be stored
variable "access_key" {
  description = "Passed in as a parameter from the Jenkins terraform command"
}

variable "log_analytics_workspace_id" {
  description = "Passed in as a parameter from the <env>input.vars file"
  type = string
}

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

variable "ip_rules" {
  description = "(optional) describe your variable"
}

variable "virtual_network_subnet_ids" {
  description = "(optional) describe your variable"
}


variable "certificatePassword" {
  description = "Passed in as a parameter from the Jenkins file"
  type = string
}

variable "certificateFile" {
  description = "Passed in as a parameter from the Jenkins file"
  type = string  
}