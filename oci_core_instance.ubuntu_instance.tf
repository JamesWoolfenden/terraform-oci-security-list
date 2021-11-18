resource "oci_core_instance" "ubuntu_instance" {

  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = oci_identity_compartment.tf-compartment.id
  shape               = "VM.Standard.E2.1"

  source_details {
    source_id   = var.image_id
    source_type = "image"
  }

  display_name = var.instance_name
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = oci_core_subnet.test_subnet.id
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = true
  }

  # metadata = {
  #     ssh_authorized_keys = file(var.public_key_path)
  # }
  preserve_boot_volume = false
}
