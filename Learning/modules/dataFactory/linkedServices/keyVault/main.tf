resource "null_resource" "key_vault_linked_service" {
    triggers = {
    data_factory_name = var.data_factory_name
  }

  provisioner "local-exec" {
    command = "az deployment group create -g ${var.resource_group_name} --template-file ${var.json_path}/deploy.json -p factoryName=${var.data_factory_name} linkedServiceName=${var.linked_service_name} baseUrl=${var.base_url}"
  }
}
output "linked_service_name" {
  value = var.linked_service_name
}
