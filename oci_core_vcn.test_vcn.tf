resource "oci_core_vcn" "test_vcn" {
  #Required
  compartment_id = oci_identity_compartment.tf-compartment.id

  cidr_blocks = var.cidr_blocks
}
