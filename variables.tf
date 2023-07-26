# variable "ami" {
#    type        = string
#    description = "Ubuntu AMI ID in N. Virginia Region"
#    default     = "ami-065deacbcaac64cf2"
# }

# variable "instance_type" {
#    type        = string
#    description = "Instance type"
#    default     = "t2.micro"
# }

# variable "name_tag" {
#    type        = string
#    description = "Name of the EC2 instance"
#    default     = "My EC2 Instance"
# }


variable "name" {
  type = string
  default = param.name
}


variable "deploy_location" {
  type        = string
  default     = "eastus"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "rg_stor" {
  type        = string
  default     = "rg-avd-storage"
  description = "Name of the Resource group in which to deploy storage"
}

variable "avd_users" {
  description = "AVD users"
  default = [
    "avduser01@contoso.net",
    "avduser02@contoso.net"
  ]
}

variable "aad_group_name" {
  type        = string
  default     = "AVDUsers"
  description = "Azure Active Directory Group for AVD users"
}

