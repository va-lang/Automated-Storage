
variable "func_name_diagnostics" {
  description = "Name for the diagnostic setting of the Azure Function."
  type        = string
}

variable "target_resource_id_func" {
  description = "The resource ID of the target Azure Function."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "The Log Analytics workspace ID where logs will be sent."
  type        = string
}

variable "category_log_FunctionAppLogs" {
  description = "The category of logs to enable for the Azure Function."
  type        = string
}

variable "function_category_metric" {
  description = "The category of metrics to enable for the Azure Function."
  type        = string
}
