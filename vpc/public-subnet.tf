resource "oci_core_subnet" "vcn-public-subnet"{

  # Required
  compartment_id = oci_identity_compartment.my-compartment.id
  vcn_id = oci_core_vcn.main_vcn.id
  cidr_block = "10.0.0.0/24"
 
  # Optional
  route_table_id = oci_core_route_table.test_route_table.id
  security_list_ids = [oci_core_security_list.public-security-list.id]
  display_name = "public-subnet"
}