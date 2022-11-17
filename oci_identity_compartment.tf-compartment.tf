resource "oci_identity_compartment" "tf-compartment" {
  compartment_id = var.tenancy_ocid
  description    = "Compartment for Terraform resources."
  name           = "first-compartment"
  enable_delete  = true
}
