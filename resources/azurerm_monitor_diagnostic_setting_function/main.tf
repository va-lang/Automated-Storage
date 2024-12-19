resource "azurerm_monitor_diagnostic_setting" "function_diagnostics" {
  name                       = "${var.func_name_diagnostics}"
  target_resource_id         = "${var.target_resource_id_func}"
  log_analytics_workspace_id = "${var.log_analytics_workspace_id}"

  enabled_log {
    category = "${var.category_log_FunctionAppLogs}"
  }
  metric {
    category = "${var.function_category_metric}"
  }
}