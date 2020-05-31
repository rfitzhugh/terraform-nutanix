## =============================================================================
#  Data Source                                                                 #
## =============================================================================

data "nutanix_clusters" "clusters" {
}

## =============================================================================
#  Define Network                                                              #
## =============================================================================
resource "nutanix_subnet" "subnet" {
  cluster_uuid = "${data.nutanix_clusters.clusters.entities.0.metadata.uuid}"

  name        = var.subnet_name
  vlan_id     = var.vlan_id
  subnet_type = "VLAN"

  subnet_ip          = var.subnet_ip
  prefix_length      = var.prefix_length
  default_gateway_ip = var.default_gateway_ip

  dhcp_domain_name_server_list = ["8.8.8.8", "4.2.2.2"]
  dhcp_domain_search_list      = ["nutanix.com", "eng.nutanix.com"]
}

## =============================================================================
#  Output                                                                      #
## =============================================================================
output "cluster" {
  value = data.nutanix_clusters.clusters.entities.0.metadata.uuid
}