resource "oci_core_instance_configuration" "intance-config" {
  compartment_id = "<compartment ocid>"
  display_name   = "kmr-instance-config"
 
  instance_details {
    instance_type = "compute"
 
    launch_details {
      compartment_id      = "<compartment ocid>"
      availability_domain = "<availability domain id>"
      shape               = "VM.Standard3.Flex"
      shape_config {
        memory_in_gbs = 4
        ocpus         = 2
      }
      metadata = {
        ssh_authorized_keys = "<your ssh key>"
      }
      source_details {
        image_id    = "<image ocid>"
        source_type = "image"
      }
 
      create_vnic_details {
        subnet_id        = "<subnet ocid>"
        assign_public_ip = true
      }
    }
  }
}
 
output "intance-config" {
  value = oci_core_instance_configuration.intance-config
}