# resource "azurerm_monitor_diagnostic_setting" "cf_azurerm_monitor_diagnostic_setting" {
#   name               = "${var.name}"
#   target_resource_id = "${var.target_resource_id}"
#   storage_account_id = "${var.storage_account_id}"

#   enabled_log {
#     category = "${var.enabled_log_category}"
#   }

#   metric {
#     category = "${var.metric_category}"
#   }
# }

resource "azurerm_monitor_diagnostic_setting" "storage_diagnostics" {
  name                       = "${var.name}"
  target_resource_id         = "${var.target_resource_id}"
  log_analytics_workspace_id = "${var.log_analytics_workspace_id}"

  enabled_log {
    category = "${var.enabled_log_category_read}"
  }

  enabled_log {
    category = "${var.enabled_log_category_write}"
  }

  metric {
    category = "${var.metric_category}"
  }
}


