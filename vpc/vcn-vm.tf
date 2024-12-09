resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = "<availability domain id>"
    compartment_id = oci_identity_compartment.my-compartment.id
    shape = "VM.Standard2.1"
    source_details {
        source_id = "<image ocid>"
        source_type = "image"
    }

    # Optional
    display_name = "aaditya_ubuntu"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    metadata = {
        ssh_authorized_keys = file("path-to-publickey.pub")
    } 
    preserve_boot_volume = false
}

output "instance_id" {
  value = oci_core_instance.ubuntu_instance.id
}