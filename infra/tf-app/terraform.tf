terraform {

  required_version = "~> 1.5"
 
  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version = "~> 3.0"

    }

  }
 
  backend "azurerm" {

    resource_group_name  = "lami0053-githubactions-rg"

    storage_account_name = "lami0053githubactions"

    container_name       = "tfstate"

    key                  = "prod.app.tfstate"

    use_oidc             = true

  }

}
 
provider "azurerm" {

  features {}

  use_oidc = true

}
 