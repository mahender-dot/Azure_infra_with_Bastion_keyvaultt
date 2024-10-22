terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_secrets_on_destroy = true
      recover_soft_deleted_secrets          = true
    }
  }
  subscription_id = "8f54f412-d916-4339-a091-75305f4fe5c3"
}
provider "random" {}