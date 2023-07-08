data "vault_azure_access_credentials" "creds" {
  role    = "edu-app"
  backend = "azure"
}

output "azure_clientid" {
  value = data.vault_azure_access_credentials.creds.client_id
}

output "azure_clientsecret" {
  value = data.vault_azure_access_credentials.creds.client_secret
  sensitive = true
}
