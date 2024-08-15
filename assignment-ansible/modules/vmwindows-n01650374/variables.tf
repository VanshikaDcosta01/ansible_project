variable "rgroup_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region where the resources will be created"
}

variable "subnet_id" {
  description = "ID of the subnet where the resources will be deployed"
}

variable "nb_count" {
  description = "Number of network interfaces to create"
  default     = 1
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}

variable "windows_admin_username" {
  default     = "n01650374"
  description = "Admin username for the Windows VM"
}

variable "windows_admin_password" {
  default     = "N@01650374"
  description = "Admin password for the Windows VM"
}

variable "windows_os_disk_storage_account_type" {
  default     = "StandardSSD_LRS"
  description = "Storage account type for the OS disk"
}

variable "windows_os_disk_size" {
  default     = 128
  description = "Size of the OS disk in GB"
}

variable "windows_os_disk_caching" {
  default     = "ReadWrite"
  description = "Caching type for the OS disk"
}

variable "windows_os_publisher" {
  default     = "MicrosoftWindowsServer"
  description = "Publisher of the Windows OS image"
}

variable "windows_os_offer" {
  default     = "WindowsServer"
  description = "Offer of the Windows OS image"
}

variable "windows_os_sku" {
  default     = "2016-Datacenter"
  description = "SKU of the Windows OS image"
}

variable "windows_os_version" {
  default     = "latest"
  description = "Version of the Windows OS image"
}

variable "windows_avs" {
  default     = "n01650374-windows-avs"
  description = "Availability set name for the Windows VM"
}

variable "windows_name" {
  default     = "n01650374-w-vm"
  description = "Name of the Windows VM"
}

variable "windows_size" {
  default     = "Standard_B1s"
  description = "Size of the Windows VM"
}
