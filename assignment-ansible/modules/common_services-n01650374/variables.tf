variable "location" {
  description = "Azure region where the resources will be created"
}

variable "rgroup_name" {
  description = "Name of the resource group"
}

variable "log_analytics_workspace_name" {
  default     = "log-analytics-workspace-0374"
  description = "Name of the Log Analytics workspace"
}

variable "recovery_services_vault_name" {
  default     = "recovery-service-vault-0374"
  description = "Name of the Recovery Services vault"
}

variable "storage_account_name" {
  default     = "n01650374sa"
  description = "Name of the storage account"
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}
