
# Core variables common to all modules
variable "subscription_id" {}
variable "resource_group_name" {}
variable "resource_group_location" {}
variable "bes_resource_group_name" {}
variable "bes_account_name" {}
variable "backend_state" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "access_key" {}

# Core supporting variables common to all modules
variable "diagnostic_setting_name" {}
variable "log_analytics_workspace_id" {}
variable "tags" {}
variable "sa_tags" {}

# Variables specific to this module
variable "kusto_cluster_name" {}


# Permissions
variable "contributor_access_objid" {}


