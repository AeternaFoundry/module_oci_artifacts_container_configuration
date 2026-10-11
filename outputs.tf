output "artifacts_container_configurations_id" {
  description = "Map of id values across all artifacts_container_configurations, keyed the same as var.artifacts_container_configurations except keys with no id are omitted"
  value       = { for k, v in oci_artifacts_container_configuration.artifacts_container_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "artifacts_container_configurations_compartment_id" {
  description = "Map of compartment_id values across all artifacts_container_configurations, keyed the same as var.artifacts_container_configurations except keys with no compartment_id are omitted"
  value       = { for k, v in oci_artifacts_container_configuration.artifacts_container_configurations : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "artifacts_container_configurations_is_repository_created_on_first_push" {
  description = "Map of is_repository_created_on_first_push values across all artifacts_container_configurations, keyed the same as var.artifacts_container_configurations except keys with no is_repository_created_on_first_push are omitted"
  value       = { for k, v in oci_artifacts_container_configuration.artifacts_container_configurations : k => v.is_repository_created_on_first_push if v.is_repository_created_on_first_push != null }
}
output "artifacts_container_configurations_namespace" {
  description = "Map of namespace values across all artifacts_container_configurations, keyed the same as var.artifacts_container_configurations except keys with no namespace are omitted"
  value       = { for k, v in oci_artifacts_container_configuration.artifacts_container_configurations : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

