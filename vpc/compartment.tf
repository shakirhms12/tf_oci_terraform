resource "oci_identity_compartment" "my-compartment" {
    # Required
    compartment_id = "<compartment ocid>"
    description = "Compartment for Terraform resources."
    name = "VCN-TF-OCI-COMPARTMENT"
}
output "compartment_id" {
  value = oci_identity_compartment.my-compartment.id
}