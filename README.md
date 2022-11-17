# terraform-oci-security-list

[![Build Status](https://github.com/JamesWoolfenden/terraform-oci-security-list/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-oci-security-list)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-oci-security-list.svg)](https://github.com/JamesWoolfenden/terraform-oci-security-list/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-oci-security-list.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-oci-security-list/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-oci-security-list/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-oci-security-list&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-oci-security-list/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-oci-security-list&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is a very basic example.

![alt text](./diagram/message_queue.png)

Include **module.activemq.tf** this repository as a module in your existing Terraform code:

```terraform
module "security" {
  source      = "JamesWoolfenden/security-list/oci"
  version     = "v0.1.1"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.14.8 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.ubuntu_instance](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/resources/core_instance) | resource |
| [oci_core_security_list.example](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/resources/core_security_list) | resource |
| [oci_core_subnet.test_subnet](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/resources/core_subnet) | resource |
| [oci_core_vcn.test_vcn](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/resources/core_vcn) | resource |
| [oci_identity_compartment.tf-compartment](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/resources/identity_compartment) | resource |
| [oci_identity_availability_domains.ads](https://registry.terraform.io/providers/hashicorp/oci/4.47.0/docs/data-sources/identity_availability_domains) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | n/a | `list(string)` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | n/a | `string` | n/a | yes |
| <a name="input_ingress"></a> [ingress](#input\_ingress) | n/a | `map` | <pre>{<br>  "protocol": "all",<br>  "source": "192.168.1.0/24",<br>  "stateless": true<br>}</pre> | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | n/a | `string` | n/a | yes |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | n/a | `string` | n/a | yes |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | n/a | `string` | `"10.0.0.0/24"` | no |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `string` | `"ocid1.tenancy.oc1..aaaaaaaaias5q6dgyfszqcanhgetihg5bri3r6mehrwzier2xs3apa3r2yea"` | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ads"></a> [ads](#output\_ads) | n/a |
| <a name="output_compartment"></a> [compartment](#output\_compartment) | n/a |
| <a name="output_security_list"></a> [security\_list](#output\_security\_list) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-oci-security-list/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-oci-security-list/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
