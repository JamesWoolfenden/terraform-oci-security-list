variable "tenancy_ocid" {
  type    = string
  default = "ocid1.tenancy.oc1..aaaaaaaaias5q6dgyfszqcanhgetihg5bri3r6mehrwzier2xs3apa3r2yea"
}

variable "user_ocid" {
  type    = string
  default = "ocid1.user.oc1..aaaaaaaamvmqbxgd5ul6ji5i5exf3xmx3uhjdht6zqcnqri7pjxlzhurto4a"
}

variable "public_key_path" {
  type    = string
  default = "/Users/jameswoolfenden/.oci/dodge_public.pem"
}


variable "instance_name" {
  type    = string
  default = "oracle-cloud-jgw-1"
}


variable "cidr_blocks" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}


variable "image_id" {
  type    = string
  default = "ocid1.image.oc1.uk-london-1.aaaaaaaalksmnbf4dqawnwgws665c5eqcygqzn5eviqxosdq3nnuwbdbpimq"
}
