variable "vm_ids" {
  description = "List of virtual machine IDs to which the data disks will be attached"
  type        = list(string)
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
}

variable "rgroup_name" {
  description = "Name of the resource group"
  type        = string
}

variable "common_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

