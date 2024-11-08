<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.cilium](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cilium_namespace"></a> [cilium\_namespace](#input\_cilium\_namespace) | Cilium Namespace | `string` | `"kube-system"` | no |
| <a name="input_helm_chart_name"></a> [helm\_chart\_name](#input\_helm\_chart\_name) | Helm Chart Name | `string` | `"cilium"` | no |
| <a name="input_helm_chart_repo"></a> [helm\_chart\_repo](#input\_helm\_chart\_repo) | Helm Chart Repo | `string` | `"https://helm.cilium.io/"` | no |
| <a name="input_helm_chart_version"></a> [helm\_chart\_version](#input\_helm\_chart\_version) | Helm Chart Version | `string` | `"1.15.6"` | no |
| <a name="input_helm_custom_values"></a> [helm\_custom\_values](#input\_helm\_custom\_values) | Use Helm Custom Values | `bool` | `false` | no |
| <a name="input_helm_custom_values_path"></a> [helm\_custom\_values\_path](#input\_helm\_custom\_values\_path) | Helm Custom Values Path | `string` | `""` | no |
| <a name="input_kube_context"></a> [kube\_context](#input\_kube\_context) | Kubernetes Context to Use | `string` | `""` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Kubeconfig Path | `string` | `"~/.kube/config"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
