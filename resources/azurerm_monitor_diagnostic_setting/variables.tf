variable "name" {
  description = "The name of the diagnostic setting."
  type        = string
}

variable "target_resource_id" {
  description = "The ID of the resource to apply the diagnostic setting to."
  type        = string
}

variable "log_analytics_workspace_id" {
  description = "The ID of the log analytics account to send diagnostic logs to."
  type        = string
}

variable "enabled_log_category_read" {
  description = "The category of the logs to enable."
  type        = string
}
variable "enabled_log_category_write" {
  description = "The category of the logs to enable."
  type        = string
}


variable "metric_category" {
  description = "The category of the metrics to enable."
  type        = string
}
variable storage_account_id{
  description = "the id of the storage account we want to monitor"
  type = string
  default = ""
}
variable "enabled_log_category" {
  description = "the category for the enabled logs"
  type = string
  default = ""
  
}
