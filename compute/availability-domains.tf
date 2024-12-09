data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_oc_id
}
 
output "availability_domains" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}