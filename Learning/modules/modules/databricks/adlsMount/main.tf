resource "null_resource" "databricks_mount_adls" {
    triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = <<EOF
configs = {"fs.azure.account.auth.type": "OAuth", "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider", "fs.azure.account.oauth2.client.id": "${var.client_id}", "fs.azure.account.oauth2.client.secret": "${var.client_secret}", "fs.azure.account.oauth2.client.endpoint": "https://login.microsoftonline.com/${var.tenant_id}/oauth2/token"}

dbutils.fs.mount(source = "abfss://${var.filesystem_name}@${var.storage_account_name}.dfs.core.windows.net/", mount_point = "/mnt/${var.mount_name}", extra_configs = configs)
    EOF
  }
}