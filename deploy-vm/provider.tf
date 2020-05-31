## =============================================================================
#  Configure Nutanix Provider                                                  #
## =============================================================================
provider "nutanix" {
 username = var.nutanix_user
 password = var.nutanix_password
 endpoint = var.prism_ip
 insecure = true
 port     = 9440
}