provider "azurerm" {
  subscription_id = "729e44c4-c672-4524-ae6f-facbd854d997"
  client_id       = "3e8d0673-81f6-46a2-9d80-c9a5ec730a75"
  client_secret   = "4KpdYU40JmZPvLpkrw_-9A46Yc_tQ_18T4"
  tenant_id       = "5a54b002-1578-40e2-bbc3-9d736951d57f"
  version         = "2.38.0"
  features {}
}

terraform {
    backend "azurerm" {}
}

resource "azurerm_key_vault" "example" {
  name                        = "examplekeyvaultpoo"
  location                    = "canada central"
  resource_group_name         = "testingdemo"
  
  tenant_id                   = "5a54b002-1578-40e2-bbc3-9d736951d57f"


  sku_name = "standard"
}

