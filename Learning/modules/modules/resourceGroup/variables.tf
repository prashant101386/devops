variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "resource_group_location" {
  description = "The location of the resource group"
  default     = ["West US 2"]  
}

variable "tags" {
  description = "Resource tag key pair values from terraform.tfvars file"
}