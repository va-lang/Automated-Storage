terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
  features {} # This block is required even if left empty
  subscription_id = "c8e2c048-bbab-40ac-9ff2-8c227f17df28"
  resource_provider_registrations = "none"
}

