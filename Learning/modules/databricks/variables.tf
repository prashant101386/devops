variable "resource_group_name" {
    description = ""
}

variable "location" {
    description = ""
}

variable "databricks_name" {
    description = ""
}

variable "databricks_sku" {
    description = ""
}

variable "tags" {
    description = ""
}

variable "vnet_id" {
    description = ""
}

variable "no_public_ip" {
    description = ""    
    default = true
}

variable "public_subnet_name" {
    description = ""    
}

variable "private_subnet_name" {
    description = ""    
}

variable "managed_resource_group_name" {
  description = ""
}
