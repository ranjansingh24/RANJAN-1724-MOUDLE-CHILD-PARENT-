terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
  #   backend "azurerm" {
  #     resource_group_name = "Ranjan-singh"
  #     storage_account_name = "ranjansingh1724"
  #     container_name = "tfstate"
  #     key            = "rg.tfstate"

}


provider "azurerm" {
  features {}
}