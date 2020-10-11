output "app_service_plan" {
  value = azurerm_app_service_plan.asp.name
}

output "app_service_name" {
  value = azurerm_app_service.asp.name
}

output "principal_account_id" {
  value = azurerm_app_service.asp.identity.0.principal_id
}
