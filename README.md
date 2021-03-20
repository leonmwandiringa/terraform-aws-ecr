# AWS ECR Terraform module

Terraform module which creates AWS ECR Rpositories on AWS .

ECR configurations includes:

- Scan On Push
- Encryption
- Iam
- Tag Immutability


## Basic Usage

```hcl
module "ecr" {
  source = "techadontech/aws-ecr-terraform"
  images = var.images
  tags   = var.global_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Modules

No Modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| tags | (Required) module global tags. | `map(any)` | `null` | yes |
| scan_images_on_push | (Optional) Allow or disallow scan on push. | `bool` | `false` | no |
| encryption_configuration | (Optiona) encryption type, provide kms key if using kms. | `object({encryption_type = string, kms_key   = any})` | `{encryption_type = "AES256", kms_key = null}` | no |
| image_tag_mutability | (Optional) IMMUTABLE or MUTABLE, image changeability. | `string)` | `MUTABLE` | no |
| image_repository_access | (Optional) Image access to the ECR, [READ_ONLY_ACCESS, FULL_ACCESS]. | `string` | `FULL_ACCESS` | no |
| images | (Required) list of images. | `list(string)` | `[]` | yes |

## Outputs

| Name | Description |
|------|-------------|
| registry\_ids | Registry IDs. |
| repository\_names | Name of repositories created. |
| repository\_urls | URL of repositories created. |
| repository\_arns | ARN of repositories created". |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Leon_Mwandiringa](https://github.com/techadontech).

## License

Apache 2 Licensed. See LICENSE for full details.