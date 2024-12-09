resource "oci_load_balancer_backend_set" "test_backend_set" {
    #Required
    health_checker {
        #Required
        protocol = "HTTP"

        #Optional
        interval_ms = "10000"
        port = 8080
        response_body_regex = ""
        retries = 3
        return_code = 200
        timeout_in_millis = "3000"        
        url_path = "/"
    }
    load_balancer_id = oci_load_balancer_load_balancer.test_load_balancer.id
    name = "test_backend_set"
    policy = "LEAST_CONNECTIONS"
}