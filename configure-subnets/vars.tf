## =============================================================================
#  Variables - Authentication                                                  #
## =============================================================================
variable "nutanix_user" {
    type        = "string"
    description = "Username for authentication"
}

variable "nutanix_password" {
    type        = "string"
    description = "Password for authentication"  
}

## =============================================================================
#  Variables - Environmental                                                   #
## =============================================================================
variable "prism_ip" {
  type        = "string"
  description = "IP Address for Prism"
}

variable "cluster_uuid" {
    type        = "string"
    description = "UUID for Nutanix Cluster"
}

## =============================================================================
#  Variables - Subnet Configuration                                            #
## =============================================================================
variable "subnet_name" {
    type        = "string"
    description = "Virtual network name in settings"
}

variable "vlan_id" {
    type        = "string"
    description = "Virtual network VLAN assignment"
}

variable "subnet_ip" {
    type        = "string"
    description = "Subnet address"
}

variable "prefix_length" {
    type        = "string"
    description = "Subnet mask bits"
}
variable "default_gateway_ip" {
    type        = "string"
    description = "Default gateway address"
}