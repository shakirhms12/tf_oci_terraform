resource "oci_autoscaling_auto_scaling_configuration" "test_auto_scaling_configuration" {
  #Required
  auto_scaling_resources {
    #Required
    id   = oci_core_instance_pool.tf_instance_pool.id
    type = "instancePool"
  }
  compartment_id = "<Your Compartment OCID>"
  #Optional
  is_enabled   = "true"
  display_name = "auto_scaling_ipool"
 
  policies {
    #Required
    policy_type = "threshold"
 
    #Optional
    capacity {
 
      #Optional
      initial = 3
      max     = 5
      min     = 3
    }
    display_name = "auto_scaling_policy"
    is_enabled   = "true"
    rules {
 
      #Optional
      action {
 
        #Optional
        type  = "CHANGE_COUNT_BY"
        value = "1"
      }
      display_name = "scale-out-rule"
      metric {
 
        #Optional
        metric_type = "CPU_UTILIZATION"
        threshold {
 
          #Optional
          operator = "GT"
          value    = "70"
        }
      }
    }
 
    rules {
 
      #Optional
      action {
 
        #Optional
        type  = "CHANGE_COUNT_BY"
        value = "-1"
      }
      display_name = "scale-in-rule"
      metric {
 
        #Optional
        metric_type = "CPU_UTILIZATION"
        threshold {
 
          #Optional
          operator = "LT"
          value    = "40"
        }
      }
    }
 
  }
}
 