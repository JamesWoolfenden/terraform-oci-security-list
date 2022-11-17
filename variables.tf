
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaias5q6dgyfszqcanhgetihg5bri3r6mehrwzier2xs3apa3r2yea"
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
