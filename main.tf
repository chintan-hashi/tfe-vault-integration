#data "vault_azure_access_credentials" "creds" {
#  role    = "edu-app"
#  backend = "azure"
#}


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
