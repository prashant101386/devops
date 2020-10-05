variable "certificate_name" {
  description = "name may only contain alphanumeric characters and dashes"
}

variable "key_vault_id" {
  description = ""
}

variable "certificate" {
  description = ""
}

variable "password" {
  description = ""
}

variable "issuer_parameters" {
  description = "(optional) describe your variable"
}

variable "exportable" {
  description = "(optional) describe your variable"
}

variable "key_size" {
  description = "(optional) describe your variable"
}

variable "key_type" {
  description = "(optional) describe your variable"
}

variable "reuse_key" {
  description = "(optional) describe your variable"
}

variable "content_type" {
  description = "(optional) describe your variable"
}