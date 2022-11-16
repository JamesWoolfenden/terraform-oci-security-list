module "security" {
  source          = "../../"
  instance_name   = var.instance_name
  public_key_path = var.public_key_path
  user_ocid       = var.user_ocid
  image_id        = var.image_id
  cidr_blocks     = var.cidr_blocks
  tenancy_id      = var.tenancy_id
}
