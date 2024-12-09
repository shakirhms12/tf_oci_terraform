resource "oci_load_balancer_backend" "test_backend" {
    #Required
    backendset_name = oci_load_balancer_backend_set.test_backend_set.name
    ip_address = "10.0.0.3"
    load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
    port = 8080
}