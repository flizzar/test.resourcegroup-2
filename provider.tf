provider "azurerm" {
  version         = "2.99"
  subscription_id = "c6c596fb-400d-460d-9a51-ebce5f6833c2"
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.99"
    }
  }
  backend "azurerm" {
  }
}

data "terraform_remote_state" "state" {
    backend = "azurerm"
    config = {
        resource_group_name = "${var.backendrg}"
        storage_account_name = "${var.backendSA}"
        container_name = "${var.backendblob}"
        key = "${var.backendkey}"
    }
}
