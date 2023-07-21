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
      # ...
    }
  }
  required_version = ">= 0.13"
}

# This block goes outside of the required_providers block!
provider "azurerm" {
  features {}
}


