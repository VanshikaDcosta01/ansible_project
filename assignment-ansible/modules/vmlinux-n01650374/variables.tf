locals {
  common_tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Vanshika.Dcosta"
    ExpirationData = "2024-12-31"
    Environment    = "Learning"
  }
}

variable "linux_name" {
  description = "Name of the Linux VM"
}

variable "vm_size" {
  default     = "Standard_DS1_v2"
  description = "Size of the VM"
}

variable "admin_username" {
  default     = "n01650374"
  description = "Admin username for the VM"
}

variable "public_key_path" {
  default     = "/Users/N01650374/.ssh/id_rsa.pub"
  description = "Path to the public SSH key"
}

variable "private_key_path" {
  default     = "/Users/N01650374/.ssh/id_rsa"
  description = "Path to the private SSH key"
}

variable "os_disk_storage_account_type" {
  default = "Premium_LRS"
}

variable "os_disk_size" {
  default = 64
}

variable "os_disk_caching" {
  default = "ReadWrite"
}

variable "os_publisher" {
  default = "RedHat"
}

variable "os_offer" {
  default = "RHEL"
}

variable "os_sku" {
  default = "9-LVM"
}

variable "os_version" {
  default     = "latest"
  description = "Version of the OS image"
}

variable "linux_avs" {
  default     = "n01650374-linux-avs"
  description = "Availability set name for the Linux VM"
}

variable "rgroup_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region where the resources will be created"
}

variable "subnet_id" {
  description = "ID of the subnet where the VM will be deployed"
}

variable "storage_account_uri" {
  description = "URI of the storage account"
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}

