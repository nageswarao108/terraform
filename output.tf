
# output "public_ip" {
#  value       = aws_instance.my_vm.public_ip
#  description = "Public IP Address of EC2 instance"
# }

# output "instance_id" {
#  value       = aws_instance.my_vm.id
#  description = "Instance ID"
# }



output "location" {
  description = "The Azure region"
  value       = azurerm_resource_group.rg_storage.location
}

output "storage_account" {
  description = "Storage account for Profiles"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_share" {
  description = "Name of the Azure File Share created for FSLogix"
  value       = azurerm_storage_share.FSShare.name
}

output "AVD_user_groupname" {
  description = "Azure Active Directory Group for AVD users"
  value       = azuread_group.aad_group.display_name
}