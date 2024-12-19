module "azurerm_monitor_diagnostic_setting"  {
  source = "../resources/azurerm_monitor_diagnostic_setting_function"
  func_name_diagnostics   = "func-diagnostic-settings"
  target_resource_id_func =  "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProvider}/{resourceType}/{resourceName}"
  log_analytics_workspace_id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}"
  category_log_FunctionAppLogs = "FunctionAppLogs"
  function_category_metric = "AllMetrics"
}

module "azurerm_monitor_diagnostic_setting"  {
  source = "../resources/azurerm_monitor_diagnostic_setting"
  name                       = "storage-diagnostic-settings"
  target_resource_id         = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProvider}/{resourceType}/{resourceName}"
  log_analytics_workspace_id = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}"
  enabled_log_category_read = "StorageRead"
  enabled_log_category_write = "StorageWrite"
  metric_category = "Transaction"
}