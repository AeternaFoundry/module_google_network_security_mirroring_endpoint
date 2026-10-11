variable "network_security_mirroring_endpoints" {
  description = <<EOT
Map of network_security_mirroring_endpoints, attributes below
Required:
    - location
    - mirroring_endpoint_group
    - mirroring_endpoint_id
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                 = string
    mirroring_endpoint_group = string
    mirroring_endpoint_id    = string
    deletion_policy          = optional(string)
    description              = optional(string)
    labels                   = optional(map(string))
    project                  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

