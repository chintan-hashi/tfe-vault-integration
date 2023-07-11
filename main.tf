provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "cgosaliavaultdemo"
  location = "westus2"

  tags = {
    environment = "Production"
  }
}
