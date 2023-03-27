provider "azurerm" {
  version         = "3.7.0"
  use_oidc = true
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform"
    storage_account_name = "flizztffile"
    container_name = "tfstate"
    key = "terraform-test2.tfstate"
  }
}
