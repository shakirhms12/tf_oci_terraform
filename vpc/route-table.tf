resource "oci_core_route_table" "test_route_table" {
    #Required
    compartment_id = oci_identity_compartment.my-compartment.id
    vcn_id = oci_core_vcn.main_vcn.id

    display_name = "test-route-table"
    route_rules {
        #Required
        network_entity_id = oci_core_internet_gateway.test_internet_gateway.id

        #Optional
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
    }
}