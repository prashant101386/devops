resource "azurerm_monitor_diagnostic_setting" "diagnostic_setting" {
  name               = var.diagnostic_setting_name
  target_resource_id = var.target_resource_id

  log {
    category = "AuditEvent"
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