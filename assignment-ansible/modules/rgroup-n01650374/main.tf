resource "azurerm_resource_group" "rgroup_name" {
  name     = var.rgroup_name
  location = var.location
  tags     = var.common_tags
}


