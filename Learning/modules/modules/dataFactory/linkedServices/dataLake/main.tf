resource "null_resource" "data_lake_linked_service" {
    triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = "az deployment group create -n ${var.linked_service_name} -g ${var.resource_group_name} --template-file ${var.json_path}/deploy.json -p factoryName=${var.data_factory_name} linkedServiceName=${var.linked_service_name} baseUrl=${var.base_url} keyVaultLinkedServiceName=${var.key_vault_linked_service_name} secretName=${var.secret_name}"
  }
}