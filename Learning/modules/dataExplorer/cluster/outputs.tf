output "principal_account_id" {
  value = azurerm_kusto_cluster.cluster.identity.0.principal_id
}