
# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "8a435a59-0476-4cd1-b4d6-17509653b009"
  client_secret   = "gjS8Q~gaQgqvrMbHhV44SgoYBb5gUcj3hIVKSaqZ"
  tenant_id       = "845b627c-8f30-4332-ac22-ccc01140a0cf"
  subscription_id = "99d4439d-9254-46a3-aab3-ef38a73c49b9"
}