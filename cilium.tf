locals {
  default_namespaces = ["kube-system", "default", "kube-node-lease", "kube-public"]
}

resource "helm_release" "cilium" {
  create_namespace = contains(local.default_namespaces, var.cilium_namespace) ? false : true
  namespace        = var.cilium_namespace
  name             = var.helm_chart_name
  chart            = var.helm_chart_name
  repository       = var.helm_chart_repo
  version          = var.helm_chart_version

  values = var.helm_custom_values ? [file(var.helm_custom_values_path)] : []
}
