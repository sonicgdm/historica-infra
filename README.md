<!-- BEGIN_TF_DOCS -->
## Overview
A module to create a SageMaker domain with custom lifecycle

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_sagemaker_app_image_config.sagemaker_image_config](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_app_image_config) | resource |
| [aws_sagemaker_domain.sagemaker](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_domain) | resource |
| [aws_sagemaker_image.sagemaker_image](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_image) | resource |
| [aws_sagemaker_image_version.sagemaker_image_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sagemaker_image_version) | resource |
| [aws_iam_roles.sagemaker_domain_full_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |

## Inputs

| Name | Description               | Type | Default | Required |
|------|---------------------------|------|---------|:--------:|
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | VPC private subnets       | `list(string)` | n/a | yes |
| <a name="input_sagemaker_domain_name"></a> [sagemaker\_domain\_name](#input\_sagemaker\_domain\_name) | SageMaker Domain name     | `string` | n/a | yes |
| <a name="input_sagemaker_image_name"></a> [sagemaker\_image\_name](#input\_sagemaker\_image\_name) | SageMaker image name      | `string` | n/a | yes |
| <a name="input_sagemaker_image_uri"></a> [sagemaker\_image\_uri](#input\_sagemaker\_image\_uri) | SageMaker base image name | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id                    | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
