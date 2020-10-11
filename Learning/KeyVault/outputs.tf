output "key_vault_name" {
  value = module.key_vault.key_vault_name
  sensitive = true
}

output "resource_group_name" {
  value = module.kv_resourcegroup.resource_group_name
  sensitive = true
}

output "key_name"{
  #value = module.ddtmw2dihadl01cert.certificate_name
  value = "dih-iac-certificate"
  sensitive = true
}

#output "key_version"{
  #value = module.ddtmw2dihadl01cert.certificate_version
  #value = resource.azurerm_key_vault_certificate.BigData.certificate_version
#}