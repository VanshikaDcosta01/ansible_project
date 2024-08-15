terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateN01650374RG"
    storage_account_name = "tfstaten01650374sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    access_key           = ""
  }
}

