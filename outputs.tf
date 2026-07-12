output "maintenance_assignment_dynamic_scopes_filter" {
  description = "Map of filter values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = { for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : k => v.filter }
}
output "maintenance_assignment_dynamic_scopes_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = { for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : k => v.maintenance_configuration_id }
}
output "maintenance_assignment_dynamic_scopes_name" {
  description = "Map of name values across all maintenance_assignment_dynamic_scopes, keyed the same as var.maintenance_assignment_dynamic_scopes"
  value       = { for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : k => v.name }
}

