variable "scope" {
    description = "The scope to apply the role assignment to. Can include subscription, resource group and resource"
}

variable "role_definition_name" {
    description = "The id of the role you want to assign"
}

variable "principal_id" {
    description = "The id of the object you want to assign the role to"
}