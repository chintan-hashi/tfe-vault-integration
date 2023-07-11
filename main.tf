data "vault_azure_access_credentials" "creds" {
  role    = "edu-app"
  backend = "azure"
}

provider "azurerm" {
  features {}
  use_cli = false
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "cgosaliavaultdemo"
  location = "us-west-2"

  tags = {
    environment = "Production"
  }
}
