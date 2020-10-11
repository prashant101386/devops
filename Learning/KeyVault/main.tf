provider "azurerm" {
  version         = "=2.0.0"
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features{}
}

####################################################################Key Vault
module "key_vault" {
  source = "../modules/keyVault/keyVault"

  key_vault_name                  = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  enabled_for_disk_encryption     = false
  enabled_for_template_deployment = true
  tenant_id                       = var.tenant_id
  soft_delete_enabled             = true
  purge_protection_enabled        = true
  sku                             = "standard"
  default_action                  = "Deny"
  virtual_network_subnet_ids      = var.virtual_network_subnet_ids
  bypass                          = "AzureServices"
  }
/*

####################################################################Access Policies

    WARNING!!! Upon "apply" access policies must be initiated FEFORE the certificate is created. However, during "destroy"
          it must be disabled. Therefore, uncomment this section during an apply and comment it out during a destroy
          A conditional statement of count, or for_each would be better, but they are not currently implemented in terraform


module "service_principal_access_policy" {
        
    source = "../../../modules/keyVault/accessPolicy"
    
      key_vault_id              = "/subscriptions/${var.subscription_id}/resourceGroups/${module.kv_resourcegroup.resource_group_name}/providers/Microsoft.KeyVault/vaults/${module.key_vault.key_vault_name}"
      tenant_id                 = var.tenant_id
      object_id                 = var.sp_access_object_id
      certificate_permissions   = ["get","create","import","delete","list", "update", "recover"]
      key_permissions           = ["get","delete"]
      secret_permissions        = ["get","delete","list","set"]
      storage_permissions       = ["recover"]
}

# Import a certificate file to the key vault from GIT
resource "azurerm_key_vault_certificate" "BigData" {
  #name         = "dih-iac-certificate-${module.random_int.random_integer}"
  name         = var.iacCertificateName
  key_vault_id = module.key_vault.key_vault_id

  certificate {
    contents = filebase64("/certs/${var.certificateFile}")
    password = var.certificatePassword
  }

  certificate_policy {
    issuer_parameters {
      name = "Self"
    }

    key_properties {
      exportable = true
      key_size   = 2048
      key_type   = "RSA"
      reuse_key  = false
    }

    secret_properties {
      content_type = "application/x-pkcs12"
    }
  }
}
####################################################################Diagnostic Settings
module "keyvault_diagnostic_settings" {
  source = "../../../modules/diagnosticSetting/logAnalytics"
  
  diagnostic_setting_name = var.diagnostic_setting_name
  target_resource_id = module.key_vault.key_vault_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  log_category              = "AuditEvent"
  metric_category           = "AllMetrics"
}

*/
