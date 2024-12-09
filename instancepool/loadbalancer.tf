resource "oci_load_balancer_load_balancer" "test_load_balancer" {
    #Required
    compartment_id = "<compartment ocid>"
    display_name = "Inst.Pool LB"
    ip_mode = "ipv4"    
    is_private = false    
    shape = "flexible"
    subnet_ids = "<subnet ocid>"
    shape_details {
        #Required
        maximum_bandwidth_in_mbps = 50
        minimum_bandwidth_in_mbps = 10
    }
}