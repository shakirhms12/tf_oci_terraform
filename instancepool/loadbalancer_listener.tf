resource "oci_load_balancer_listener" "test_listener" {
    #Required
    default_backend_set_name = oci_load_balancer_backend_set.test_backend_set.name
    load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
    name = "listener"
    port = 8080
    protocol = "HTTP"

}