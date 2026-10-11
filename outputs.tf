output "group_clusters_id" {
  description = "Map of id values across all group_clusters, keyed the same as var.group_clusters except keys with no id are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_clusters_cluster_type" {
  description = "Map of cluster_type values across all group_clusters, keyed the same as var.group_clusters except keys with no cluster_type are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.cluster_type if v.cluster_type != null && length(v.cluster_type) > 0 }
}
output "group_clusters_created_at" {
  description = "Map of created_at values across all group_clusters, keyed the same as var.group_clusters except keys with no created_at are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "group_clusters_domain" {
  description = "Map of domain values across all group_clusters, keyed the same as var.group_clusters except keys with no domain are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "group_clusters_enabled" {
  description = "Map of enabled values across all group_clusters, keyed the same as var.group_clusters except keys with no enabled are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.enabled if v.enabled != null }
}
output "group_clusters_environment_scope" {
  description = "Map of environment_scope values across all group_clusters, keyed the same as var.group_clusters except keys with no environment_scope are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.environment_scope if v.environment_scope != null && length(v.environment_scope) > 0 }
}
output "group_clusters_group" {
  description = "Map of group values across all group_clusters, keyed the same as var.group_clusters except keys with no group are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_clusters_kubernetes_api_url" {
  description = "Map of kubernetes_api_url values across all group_clusters, keyed the same as var.group_clusters except keys with no kubernetes_api_url are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.kubernetes_api_url if v.kubernetes_api_url != null && length(v.kubernetes_api_url) > 0 }
}
output "group_clusters_kubernetes_authorization_type" {
  description = "Map of kubernetes_authorization_type values across all group_clusters, keyed the same as var.group_clusters except keys with no kubernetes_authorization_type are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.kubernetes_authorization_type if v.kubernetes_authorization_type != null && length(v.kubernetes_authorization_type) > 0 }
}
output "group_clusters_kubernetes_ca_cert" {
  description = "Map of kubernetes_ca_cert values across all group_clusters, keyed the same as var.group_clusters except keys with no kubernetes_ca_cert are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.kubernetes_ca_cert if v.kubernetes_ca_cert != null && length(v.kubernetes_ca_cert) > 0 }
}
output "group_clusters_kubernetes_token" {
  description = "Map of kubernetes_token values across all group_clusters, keyed the same as var.group_clusters except keys with no kubernetes_token are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.kubernetes_token if v.kubernetes_token != null && length(v.kubernetes_token) > 0 }
  sensitive   = true
}
output "group_clusters_managed" {
  description = "Map of managed values across all group_clusters, keyed the same as var.group_clusters except keys with no managed are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.managed if v.managed != null }
}
output "group_clusters_management_project_id" {
  description = "Map of management_project_id values across all group_clusters, keyed the same as var.group_clusters except keys with no management_project_id are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.management_project_id if v.management_project_id != null && length(v.management_project_id) > 0 }
}
output "group_clusters_name" {
  description = "Map of name values across all group_clusters, keyed the same as var.group_clusters except keys with no name are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "group_clusters_platform_type" {
  description = "Map of platform_type values across all group_clusters, keyed the same as var.group_clusters except keys with no platform_type are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.platform_type if v.platform_type != null && length(v.platform_type) > 0 }
}
output "group_clusters_provider_type" {
  description = "Map of provider_type values across all group_clusters, keyed the same as var.group_clusters except keys with no provider_type are omitted"
  value       = { for k, v in gitlab_group_cluster.group_clusters : k => v.provider_type if v.provider_type != null && length(v.provider_type) > 0 }
}

