resource "null_resource" "databricks_linked_service" {
    triggers = {
    data_factory_name = var.data_factory_name
  }

  provisioner "local-exec" {
    command = "az deployment group create -g ${var.resource_group_name} --template-file ../../modules/dataFactory/linkedServices/databricks/existingCluster/deploy.json -p factoryName=${var.data_factory_name} linkedServiceName=${var.linked_service_name} domain=${var.domain} keyVaultLinkedServiceName=${var.key_vault_linked_service_name} secretName=${var.secret_name} existingClusterId=${var.existing_cluster_id}"
  }
}