variable "tenancy_id" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "public_key_path" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "cidr_blocks" {
  type = list(string)
}

variable "image_id" {
  type = string
}
