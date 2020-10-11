output "app_service_plan" {
  value = azurerm_app_service_plan.asp.name
}

output "app_service_name" {
  value = azurerm_app_service.asp.name
}

output "resource_group_name" {
  value = azurerm_logic_app_workflow.logic_app.resource_group_name
}

output "resource_group_location" {
  value = azurerm_logic_app_workflow.logic_app.location
}