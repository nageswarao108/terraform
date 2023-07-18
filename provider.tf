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
  features {
  alias                         = "app-sub"
  subscription_id = "2bd94ec0-b962-4bad-84a8-7900bb20b520"
  tenant_id              = "73d3d213-f87a-4465-9a7e-67bd625fdf9c"
  client_id                = "b57b2822-9a42-44c6-b239-d37ff4a8e782"
  client_secret      = "Q3w8Q~kFXyWJDQFzq6CnoYJNfrTUBE5RmnZR_ai_"
  }
}

