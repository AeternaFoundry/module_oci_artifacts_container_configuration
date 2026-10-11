variable "artifacts_container_configurations" {
  description = <<EOT
Map of artifacts_container_configurations, attributes below
Required:
    - compartment_id
    - is_repository_created_on_first_push
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                      = string
    is_repository_created_on_first_push = bool
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

