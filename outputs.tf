output "maintenance_assignment_dynamic_scopes" {
  description = "All maintenance_assignment_dynamic_scope resources"
  value       = azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes
}
output "maintenance_assignment_dynamic_scopes_filter" {
  description = "List of filter values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : v.filter]
}
output "maintenance_assignment_dynamic_scopes_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : v.maintenance_configuration_id]
}
output "maintenance_assignment_dynamic_scopes_name" {
  description = "List of name values across all maintenance_assignment_dynamic_scopes"
  value       = [for k, v in azurerm_maintenance_assignment_dynamic_scope.maintenance_assignment_dynamic_scopes : v.name]
}

