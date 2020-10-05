resource "azurerm_key_vault_certificate" "key_vault_certificate" {
  name         = var.certificate_name
  key_vault_id = var.key_vault_id

  certificate {
    contents = filebase64(var.certificate)
    password = var.password
  }

  certificate_policy {
    issuer_parameters {
      name = var.issuer_parameters
    }

    key_properties {
      exportable = var.exportable
      key_size   = var.key_size
      key_type   = var.key_type
      reuse_key  = var.reuse_key
    }

    secret_properties {
      content_type = var.content_type
    }
  }
}