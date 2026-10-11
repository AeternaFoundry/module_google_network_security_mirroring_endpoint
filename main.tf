resource "google_network_security_mirroring_endpoint" "network_security_mirroring_endpoints" {
  for_each = var.network_security_mirroring_endpoints

  location                 = each.value.location
  mirroring_endpoint_group = each.value.mirroring_endpoint_group
  mirroring_endpoint_id    = each.value.mirroring_endpoint_id
  deletion_policy          = each.value.deletion_policy
  description              = each.value.description
  labels                   = each.value.labels
  project                  = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

