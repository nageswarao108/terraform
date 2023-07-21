# terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.18.0"
#    }
#  }

#  backend "s3" {
#    bucket = "tf-tuts-state"
#    key    = "state"
#    region = "eu-central-1"
#  }
# }



terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "326896e5-6eaf-4631-b3b0-1dcf196f489f"
  client_secret   = "9f78Q~7_dTDrFXUEln97CjLcbG.Ue.wIQzTcEbiA"
  tenant_id       = "73d3d213-f87a-4465-9a7e-67bd625fdf9c"
  subscription_id = "2bd94ec0-b962-4bad-84a8-7900bb20b520"
}


