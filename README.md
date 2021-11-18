# tf-scaffold

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

This repository exists to help with new terraform projects, and with automation and training.
The repository is designed to create the structure- scaffold that is alway needed for a new Terraform project.
Included are the basic Github Actions.
To clone scaffold repository but with no .git folder.

## Powershell

```powershell
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git scaffold
rm scaffold\.git -recurse -force
```

Edit your profile and add:

```powershell
function scaffold {
   param(
         [parameter(mandatory=$true)]
         [string]$name,
         [string]$branch="master")
   git clone --depth=1 --branch=$branch git@github.com:JamesWoolfenden/tf-scaffold.git "$name"
   rm "$name\.git" -recurse -force
}
```

or

```powershell
function scaffold {
   param(
         [parameter(mandatory=$true)]
         [string]$name,
         [string]$branch="master",
         [switch]$repo=$false)

   if (!(test-path .\$name))
   {
       git clone --depth=1 --branch=$branch git@github.com:JamesWoolfenden/tf-scaffold.git "$name"
   }
   else{
      write-warning "Path $name already exists"
      return
   }

   rm "$name\.git" -recurse -force
   cd $name
   echo "# %name" >README.md
   if ($repo)
   {
      git init|git add -A
      pre-commit install
      git commit -m "Initial Draft"
   }
}
```

Then you can use:

```powershell
scaffold -name hello-world
```

or to start a new git repo as well:

```powershell
scaffold -name hello-world -repo
```

To make a new project anytime you like.

## \*Nix

```cli
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git scaffold| rm !$/.git -rf
```

Or you add this to your ~/.bashrc

```bash
function scaffold() {
if [ -z "$1" ]
then
   name="scaffold"
else
   name=$1
fi

if [ -z "$2" ]
then
   branch="master"
else
   branch=$2
fi


echo "git clone --depth=1 --branch $branch git@github.com:JamesWoolfenden/tf-scaffold.git $name"
git clone --depth=1 --branch $branch git@github.com:JamesWoolfenden/tf-scaffold.git $name
rm $name/.git -rf
}
```

## Usage

Once it's in your profile, pretty straigh forward:

```cli
 $ scaffold terraform-aws-generic
git clone --depth=1 git@github.com:JamesWoolfenden/tf-scaffold.git terraform-aws-generic
Cloning into 'terraform-aws-generic'...
remote: Enumerating objects: 14, done.
remote: Counting objects: 100% (14/14), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 14 (delta 0), reused 10 (delta 0), pack-reused 0
Receiving objects: 100% (14/14), done.
```

## So what's in it

### .gitignore

Has good defaults for working with Terraform

### .pre-commit-config.yaml

Has a standard set of pre-commit hooks for working with Terraform and AWS. You'll need to install the pre-commit framework <https://pre-commit.com/#install>.
And after you've added all these file to your new repo, in the root of your new repository:

```cli
pre-commit install
```

### main.tf

This is an expected file for Terraform modules. I don't use it.

### Makefile

This is just to make like easier for you. Problematic if you are cross platform as make isn't very good/awful at that.

### outputs.tf

A standard place to return values, either to the screen or to pass back from a module.

### provider.aws.tf

You are always going to be using these, I have added the most basic provider for AWS.

### README.md

Where all the information goes.

### main.auto.tfvars

This is the standard file for setting your variables in. The auto keyword ensures its picked up and used by Terraform.

### variables.tf

Contains a map variable **common_tags** which should be extended and used on
every taggable object.

### .dependsabot/config.yml

Sets the repository to be automatically dependency scanned in github.

## terraform-docs

If you leave the section below in your **README.md** then the pre-commit will auto update your docs.

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
| <a name="input_cidr_blocks"></a> [cidr\_blocks](#input\_cidr\_blocks) | n/a | `list` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | n/a | `string` | `"ocid1.image.oc1.uk-london-1.aaaaaaaalksmnbf4dqawnwgws665c5eqcygqzn5eviqxosdq3nnuwbdbpimq"` | no |
| <a name="input_ingress"></a> [ingress](#input\_ingress) | n/a | `map` | <pre>{<br>  "protocol": "all",<br>  "source": "192.168.1.0/24",<br>  "stateless": true<br>}</pre> | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | n/a | `string` | `"oracle-cloud-jgw-1"` | no |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | n/a | `string` | `"/Users/jameswoolfenden/.oci/dodge_public.pem"` | no |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | n/a | `string` | `"10.0.0.0/24"` | no |
| <a name="input_tenancy_id"></a> [tenancy\_id](#input\_tenancy\_id) | n/a | `string` | `"ocid1.tenancy.oc1..aaaaaaaaias5q6dgyfszqcanhgetihg5bri3r6mehrwzier2xs3apa3r2yea"` | no |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `string` | `"ocid1.user.oc1..aaaaaaaamvmqbxgd5ul6ji5i5exf3xmx3uhjdht6zqcnqri7pjxlzhurto4a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ads"></a> [ads](#output\_ads) | n/a |
| <a name="output_compartment"></a> [compartment](#output\_compartment) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
