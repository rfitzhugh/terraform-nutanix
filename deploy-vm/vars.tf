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
#  Variables - VM Configuration                                                #
## =============================================================================
variable "vm_name" {
    type        = "string"
    description = "VM name in inventory"
}

variable "subnet_uuid" {
    type        = "string"
    description = "UUID for the VM's NIC"
}

variable "image_uuid" {
    type        = "string"
    description = "UUID for the image to clone"
}