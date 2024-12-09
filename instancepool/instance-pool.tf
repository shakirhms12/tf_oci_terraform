resource "oci_core_instance_pool" "test_instance_pool" {
    #Required
    compartment_id = "<Your Compartment OCID>"
    instance_configuration_id = oci_core_instance_configuration.test_instance_configuration.id
    placement_configurations {
        #Required
        availability_domain = "<AD>"
        primary_vnic_subnets {
            #Required
            subnet_id = "<subnet OCID>"
        }
        secondary_vnic_subnets {
            #Required
            subnet_id = "<subnet OCID>"
        }
    }
    size = 3
    load_balancers {
        #Required
        backend_set_name = oci_load_balancer_backend_set.test_backend_set.name
        load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
        port = 8080
        vnic_selection = "PrimaryVnic"
    }
}