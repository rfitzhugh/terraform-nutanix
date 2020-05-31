## =============================================================================
#  Deploy AHV VM                                                               #
## =============================================================================
resource "nutanix_virtual_machine" "vm" {
 name = var.vm_name
 description = "Created with Terraform"
 cluster_uuid = var.cluster_uuid
  num_vcpus_per_socket = 2
  num_sockets = 1
  memory_size_mib = 4096
  
  nic_list {
     subnet_uuid = var.subnet_uuid
   }

  disk_list {
  data_source_reference = {
   kind = "image"
   uuid = var.image_uuid
    }

  device_properties {
    disk_address = {
   device_index = 0
   adapter_type = "IDE"
    }

    device_type = "DISK"
  }
   }

  disk_list {
  disk_size_mib   = 100000
  disk_size_bytes = 104857600000
   }
}  

## =============================================================================
#  Define Output                                                               #
## =============================================================================  
output "ip_address" {
  value = nutanix_virtual_machine.vm.nic_list_status.0.ip_endpoint_list[0]["ip"]
}