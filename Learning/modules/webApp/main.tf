resource "azurerm_app_service_plan" "asp" {
  name                    = var.app_service_plan
  location                = var.resource_group_location
  resource_group_name     = var.resource_group_name
  kind                    = "Linux"
  reserved                = true
  
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "asp" {
  name                    = var.app_service_name
  location                = var.resource_group_location
  resource_group_name     = var.resource_group_name
  app_service_plan_id     = azurerm_app_service_plan.asp.id

  site_config{
    java_version           = "1.8"
    java_container         = "TOMCAT"
    java_container_version = "9.0"
  }

  identity{
    type = "SystemAssigned"
  }
}


