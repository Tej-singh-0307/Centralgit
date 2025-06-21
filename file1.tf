terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1ecb1540-18db-4ab8-9eac-659a71d4a5f7"
}

resource "azurerm_resource_group" "tejrg" {
  name     = "tej-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "tejstorage" {
  name                     = "tejstorageaccount"
  resource_group_name      = "tej-rg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}


