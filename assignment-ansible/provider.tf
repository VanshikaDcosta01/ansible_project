provider "azurerm" {
  features {}
  tenant_id = "a1ac763b-e40c-4552-90c2-fe296adb0028"
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.54.0"
    }
  }
  required_version = ">= 1.4.6"
}

