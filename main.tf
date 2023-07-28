# resource "aws_instance" "my_vm" {
#  ami           = var.ami //Ubuntu AMI
#  instance_type = var.instance_type

#  tags = {
#    Name = var.name_tag,
#  }
# }


# resource "azurerm_resource_group" "rg_storage" {
#   location = var.deploy_location
#   name     = var.rg_stor
# }


resource "random_string" "random" {
  length  = 4
  upper   = false
  special = false
}


resource "azurerm_service_plan" "appserviceplan" {
  name                = var.appplan_name
  location            = "east us"
  resource_group_name = "NageswarRG"
  os_type             = "Linux"
  sku_name            = "B1"
}


resource "azurerm_linux_web_app" "webapp" {
  name                  = var.app_name
  location              = "east us"
  resource_group_name   = "NageswarRG"
  service_plan_id       = azurerm_service_plan.appserviceplan.id
  https_only            = true
  site_config { 
    minimum_tls_version = "1.2"
  }
}


resource "azurerm_storage_account" "storage" {
  name                     = "stor${random_string.random.id}"
  resource_group_name      = "NageswarRG"
  location                 = "east us"
  account_tier             = "Premium"
  account_replication_type = "LRS"
  account_kind             = "FileStorage"
}

resource "azurerm_storage_share" "FSShare" {
  name                 = var.variable_name
  storage_account_name = azurerm_storage_account.storage.name
  depends_on           = [azurerm_storage_account.storage]
}


data "azurerm_role_definition" "storage_role" {
  name = "Storage File Data SMB Share Contributor"
}

# resource "azurerm_role_assignment" "af_role" {
#   scope              = azurerm_storage_account.storage.id
#   role_definition_id = data.azurerm_role_definition.storage_role.id
#   principal_id       = azuread_group.aad_group.id
# }

