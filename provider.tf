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
        resource_group_name = "terraform"
        storage_account_name = "flizztffile"
        container_name = "tfstate"
        key = "terraform-test2.tfstate"
    }
}
