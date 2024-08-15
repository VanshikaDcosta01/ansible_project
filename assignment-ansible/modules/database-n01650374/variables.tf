variable "server_name" {
  default = "n01650374-database-server"
}

variable "admin_username" {
  default = "admin"
}

variable "admin_password" {
  default = "admin"
}

variable "database_name" {
  default = "n01650374-database"
}

variable "rgroup_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region where the resources will be created"
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}
