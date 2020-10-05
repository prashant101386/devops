resource "azurerm_monitor_diagnostic_setting" "diagnostic_setting" {
  name               = var.diagnostic_setting_name
  target_resource_id = var.target_resource_id
  eventhub_name      = var.event_hub_name
  eventhub_authorization_rule_id = var.authorization_rule_id
  
  log {
    category = "ActivityRuns"
    enabled  = false

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}