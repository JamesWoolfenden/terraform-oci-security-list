output "compartment" {
  value = oci_identity_compartment.tf-compartment
}

output "ads" {
  value = data.oci_identity_availability_domains.ads.availability_domains[0].name
}
