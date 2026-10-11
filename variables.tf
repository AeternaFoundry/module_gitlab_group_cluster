variable "group_clusters" {
  description = <<EOT
Map of group_clusters, attributes below
Required:
    - group
    - kubernetes_api_url
    - kubernetes_token
    - name
Optional:
    - domain
    - enabled
    - environment_scope
    - kubernetes_authorization_type
    - kubernetes_ca_cert
    - managed
    - management_project_id
EOT

  type = map(object({
    group                         = string
    kubernetes_api_url            = string
    kubernetes_token              = string
    name                          = string
    domain                        = optional(string)
    enabled                       = optional(bool)
    environment_scope             = optional(string)
    kubernetes_authorization_type = optional(string)
    kubernetes_ca_cert            = optional(string)
    managed                       = optional(bool)
    management_project_id         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.group_clusters : (
        v.kubernetes_authorization_type == null || (contains(["rbac", "abac", "unknown_authorization"], v.kubernetes_authorization_type))
      )
    ])
    error_message = "must be one of: \"rbac\", \"abac\", \"unknown_authorization\""
  }
}

