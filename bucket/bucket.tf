resource "oci_objectstorage_bucket" "test_bucket" {
    #Required
    compartment_id = "<>Your Compartment OCID>"
    name = "IP_Bucket"
    namespace = "<  Your Namespace>"

}