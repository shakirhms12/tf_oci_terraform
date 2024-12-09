resource "oci_core_internet_gateway" "test_internet_gateway" {
    #Required
    compartment_id = oci_identity_compartment.my-compartment.id
    vcn_id = oci_core_vcn.main_vcn.id

    #Optional
    enabled = true
    display_name = "test-internet-gateway"
}