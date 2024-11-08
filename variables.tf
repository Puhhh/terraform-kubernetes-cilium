variable "kubeconfig_path" {
  description = "Kubeconfig Path"
  type        = string
  default     = "~/.kube/config"
}

variable "kube_context" {
  description = "Kubernetes Context to Use"
  type        = string
  default     = ""
}

variable "cilium_namespace" {
  description = "Cilium Namespace"
  type        = string
  default     = "kube-system"
}

variable "helm_chart_name" {
  description = "Helm Chart Name"
  type        = string
  default     = "cilium"
}

variable "helm_chart_repo" {
  description = "Helm Chart Repo"
  type        = string
  default     = "https://helm.cilium.io/"
}

variable "helm_chart_version" {
  description = "Helm Chart Version"
  type        = string
  default     = "1.15.6"
}

variable "helm_custom_values" {
  description = "Use Helm Custom Values"
  type        = bool
  default     = false
}

variable "helm_custom_values_path" {
  description = "Helm Custom Values Path"
  type        = string
  default     = ""

  validation {
    condition     = !(var.helm_custom_values && var.helm_custom_values_path == "")
    error_message = "Helm Custom Values Path must not be null when Helm Custom Values is true."
  }
}
