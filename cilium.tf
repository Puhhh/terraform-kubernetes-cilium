locals {
  default-namespaces = ["kube-system", "default", "kube-node-lease", "kube-public"]
}

resource "helm_release" "cilium" {
  create_namespace = contains(local.default-namespaces, var.cilium-namespace) ? false : true
  namespace        = var.cilium-namespace
  name             = var.helm-name
  chart            = var.helm-chart-name
  repository       = var.helm-chart-repo
  version          = var.helm-chart-version

  values = var.helm-custom-values ? [file(var.helm-custom-values-path)] : []
}
