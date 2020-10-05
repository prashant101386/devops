variable "key_vault_id" {
  description = ""
}

variable "tenant_id" {
  description = ""
}

variable "object_id" {
  description = ""
}

variable "certificate_permissions" {
  type        = list(string)
  description = ""
}

variable "key_permissions" {
  type        = list(string)
  description = ""
}

variable "secret_permissions" {
  type        = list(string)
  description = ""
}

variable "storage_permissions" {
  type        = list(string)
  description = ""
}
