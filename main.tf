resource "oci_artifacts_container_configuration" "artifacts_container_configurations" {
  for_each = var.artifacts_container_configurations

  compartment_id                      = each.value.compartment_id
  is_repository_created_on_first_push = each.value.is_repository_created_on_first_push

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

