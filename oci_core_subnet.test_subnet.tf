resource "oci_core_subnet" "test_subnet" {
  cidr_block     = var.subnet_cidr_block
  compartment_id = oci_identity_compartment.tf-compartment.id
  vcn_id         = oci_core_vcn.test_vcn.id

  # #Optional
  # availability_domain = var.subnet_availability_domain
  # defined_tags = {"Operations.CostCenter"= "42"}
  # dhcp_options_id = oci_core_dhcp_options.test_dhcp_options.id
  # display_name = var.subnet_display_name
  # dns_label = var.subnet_dns_label
  # freeform_tags = {"Department"= "Finance"}
  # ipv6cidr_block = var.subnet_ipv6cidr_block
  # prohibit_internet_ingress = var.subnet_prohibit_internet_ingress
  # prohibit_public_ip_on_vnic = var.subnet_prohibit_public_ip_on_vnic
  # route_table_id = oci_core_route_table.test_route_table.id
  # security_list_ids = var.subnet_security_list_ids
}

variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}
