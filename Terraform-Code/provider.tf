terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "f59d54c3-37ae-4232-8fa1-1185d635e347"
  # Configuration options
}