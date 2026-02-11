variable "maintenance_assignment_dynamic_scopes" {
  description = <<EOT
Map of maintenance_assignment_dynamic_scopes, attributes below
Required:
    - maintenance_configuration_id
    - name
    - filter (block):
        - locations (optional)
        - os_types (optional)
        - resource_groups (optional)
        - resource_types (optional)
        - tag_filter (optional)
        - tags (optional, block):
            - tag (required)
            - values (required)
EOT

  type = map(object({
    maintenance_configuration_id = string
    name                         = string
    filter = object({
      locations       = optional(list(string))
      os_types        = optional(list(string))
      resource_groups = optional(list(string))
      resource_types  = optional(list(string))
      tag_filter      = optional(string) # Default: "Any"
      tags = optional(object({
        tag    = string
        values = list(string)
      }))
    })
  }))
}

