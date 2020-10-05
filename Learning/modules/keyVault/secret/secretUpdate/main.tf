resource "null_resource" "key_vault_secret_update" {
    triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = "az keyvault secret set --name ${var.secret_name} --vault-name ${var.key_vault_name} --value ${var.secret_value} --output none"
  }
}