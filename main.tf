resource "gitlab_group_cluster" "group_clusters" {
  for_each = var.group_clusters

  group                         = each.value.group
  kubernetes_api_url            = each.value.kubernetes_api_url
  kubernetes_token              = each.value.kubernetes_token
  name                          = each.value.name
  domain                        = each.value.domain
  enabled                       = each.value.enabled
  environment_scope             = each.value.environment_scope
  kubernetes_authorization_type = each.value.kubernetes_authorization_type
  kubernetes_ca_cert            = each.value.kubernetes_ca_cert
  managed                       = each.value.managed
  management_project_id         = each.value.management_project_id
}

