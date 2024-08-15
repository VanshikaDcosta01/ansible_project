variable "linux_vm_ids" {
  description = "List of Linux VM IDs"
  type        = list(string)
}

variable "linux_nic_ids" {
  description = "List of Linux NIC IDs"
  type        = list(string)
}

variable "linux_hostname" {
  description = "Hostname for the Linux VM"
}

variable "resource_group" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region where the resources will be created"
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}
