resource "azurerm_resource_group" "app_rg" {
  name     = "lami0053-a12-rg"
  location = "East US"

  tags = {
    environment = "test"
  }
}