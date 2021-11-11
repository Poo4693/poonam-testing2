terraform {
    backend "azurerm" {}
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "729e44c4-c672-4524-ae6f-facbd854d997"
    skip_provider_registration = "true"
    features {}
}

resource "azurerm_key_vault" "example" {
  name                        = "examplekeyvaultpoo"
  location                    = "canada central"
  resource_group_name         = "testingdemo"
  
  tenant_id                   = "5a54b002-1578-40e2-bbc3-9d736951d57f"


  sku_name = "standard"
}

