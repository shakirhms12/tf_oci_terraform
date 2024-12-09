resource "oci_identity_compartment" "compartment_oci" {
  compartment_id = var.tenancy_oc_id
  name        = "tf-compartment"
  description = "Example compartment for OCI resources using terraform"
}