resource "null_resource" "databricks_generate_token" {
    triggers = {
    trigger = var.trigger
  }

  provisioner "local-exec" {
    command = <<EOF
                  az login --service-principal --username ${var.client_id} --password ${var.client_secret} --tenant ${var.tenant_id}
                  az account set --subscription ${var.subscription_id}
                  wsId=$(az resource show --resource-type Microsoft.Databricks/workspaces -g ${var.resource_group_name} -n ${var.databricks_workspace} --query id -o tsv)
                  token_response=$(az account get-access-token --resource 2ff814a6-3304-4ab8-85cb-cd0e6f879c1d)
                  token=$(jq .accessToken -r <<< $token_response)
                  token_response=$(az account get-access-token --resource https://management.core.windows.net/)
                  azToken=$(jq .accessToken -r <<< $token_response)
                  api_response=$(curl -sf https://westus2.azuredatabricks.net/api/2.0/token/create -H "Authorization: Bearer $token" -H "X-Databricks-Azure-SP-Management-Token:$azToken" -H "X-Databricks-Azure-Workspace-Resource-Id:$wsId" -d '{"comment": "databricks3124123" }')
                  pat_token=$(jq .token_value -r <<< $api_response)
                  az keyvault secret set --vault-name ${var.key_vault_name} -n ${var.secret_name} --value $pat_token
    EOF
  }
}