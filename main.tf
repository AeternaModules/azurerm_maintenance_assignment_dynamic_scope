resource "azurerm_maintenance_assignment_dynamic_scope" "maintenance_assignment_dynamic_scopes" {
  for_each = var.maintenance_assignment_dynamic_scopes

  maintenance_configuration_id = each.value.maintenance_configuration_id
  name                         = each.value.name

  filter {
    locations       = each.value.filter.locations
    os_types        = each.value.filter.os_types
    resource_groups = each.value.filter.resource_groups
    resource_types  = each.value.filter.resource_types
    tag_filter      = each.value.filter.tag_filter
    dynamic "tags" {
      for_each = each.value.filter.tags != null ? [each.value.filter.tags] : []
      content {
        tag    = tags.value.tag
        values = tags.value.values
      }
    }
  }
}

