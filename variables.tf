variable "kubeconfig-path" {
  description = "Kubeconfig Path"
  type        = string
  default     = "~/.kube/config"
}

variable "cilium-namespace" {
  description = "Cilium Namespace"
  type        = string
  default     = "kube-system"
}

variable "helm-name" {
  description = "Helm Release Name"
  type        = string
  default     = "cilium"
}

variable "helm-chart-name" {
  description = "Helm Chart Name"
  type        = string
  default     = "cilium"
}

variable "helm-chart-repo" {
  description = "Helm Chart Repo"
  type        = string
  default     = "https://helm.cilium.io/"
}

variable "helm-chart-version" {
  description = "Helm Chart Version"
  type        = string
  default     = "1.15.6"
}

variable "helm-custom-values" {
  description = "Use Helm Custom Values"
  type        = bool
  default     = false
}

variable "helm-custom-values-path" {
  description = "Helm Custom Values Path"
  type        = string
  default     = ""

  validation {
    condition     = !(var.helm-custom-values && var.helm-custom-values-path == "")
    error_message = "helm-custom-values-path must not be null when helm-custom-values is true."
  }
}
