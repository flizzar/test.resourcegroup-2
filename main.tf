resource "azurerm_resource_group" "example" {
  name     = "TC-GithubActions"
  location = "North Europe"
} 

resource "azurerm_storage_account" "example" {
  name                     = "devopstestphh2"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
