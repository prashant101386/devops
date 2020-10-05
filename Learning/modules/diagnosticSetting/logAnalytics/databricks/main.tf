resource "azurerm_monitor_diagnostic_setting" "diagnostic_setting" {
  name                       = var.diagnostic_setting_name
  target_resource_id         = var.target_resource_id
  log_analytics_workspace_id = var.log_analytics_workspace_id
  
  log {
    category = var.log_category
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
}