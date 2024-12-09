terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "6.18.0"
    }
  }
}

provider "oci" {
  tenancy_ocid = var.tenancy_oc_id
  user_ocid = var.user_oc_id
  private_key_path = "<Path to Private Key>"
  fingerprint = var.oc_fingerprint
  region = var.oc_region
}

