output "app_service_plan" {
  value = azurerm_app_service_plan.asp.name
}

output "app_service_name" {
  value = azurerm_app_service.asp.name
}
