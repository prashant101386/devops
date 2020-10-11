variable "key_vault_name" {
  description = ""
}

variable "location" {
  description = ""
}

variable "resource_group_name" {
  description = ""
}

variable "enabled_for_disk_encryption" {
  description = ""
  type = bool
}

variable "enabled_for_template_deployment" {
  description = ""
  type = bool
}

variable "tenant_id" {
  description = ""
}

variable "soft_delete_enabled" {
  
}

variable "purge_protection_enabled" {
  
}

variable "sku" {
  description = ""
}

variable "default_action" {
  description = "(optional) describe your variable"
}

variable "virtual_network_subnet_ids" {
  description = "(optional) describe your variable"
}

variable "bypass" {
  description = "(optional) describe your variable"
}