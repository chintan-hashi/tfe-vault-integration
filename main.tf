data "vault_azure_access_credentials" "creds" {
  role    = "edu-app"
  backend = "azure"
}

provider "azurerm" {
  features {}
  client_id       = data.vault_azure_access_credentials.creds.client_id
  client_secret   = data.vault_azure_access_credentials.creds.client_secret
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "cgosaliavaultdemo"
  location = "us-west-2"

  tags = {
    environment = "Production"
  }
}
