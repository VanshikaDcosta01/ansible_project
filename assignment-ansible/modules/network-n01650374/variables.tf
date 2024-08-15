variable "rgroup_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location/region where resources will be deployed."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "n01650374-VNET"
}

variable "vnet_addr_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "n01650374-SUBNET"
}

variable "subnet_address" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.0.0/24"]
}

variable "network_security_group_name" {
  description = "The name of the network security group."
  type        = string
  default     = "n01650374-NSG"
}

variable "common_tags" {
  description = "A map of common tags to apply to the resources."
  type        = map(string)
}
