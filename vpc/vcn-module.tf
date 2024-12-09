resource "oci_core_vcn" "main_vcn" {
  compartment_id = oci_identity_compartment.my-compartment.id
  cidr_block = "10.0.0.0/16"
  display_name = "Aaditya_vcn"
  dns_label = "aaditya.vcn"    
}