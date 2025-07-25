# Outputs del módulo resource_group
output "resource_group_name" {
  description = "Nombre del Resource Group creado"
  value       = module.azurerm_resource_group.resource_group_name
}

output "resource_group_location" {
  description = "Ubicación (región) del Resource Group"
  value       = module.azurerm_resource_group.resource_group_location
}

output "resource_group_id" {
  description = "ID completo del Resource Group en Azure"
  value       = module.azurerm_resource_group.resource_group_id
}

# Outputs del módulo network
output "virtual_network_id" {
  description = "ID de la red virtual principal (VNet)"
  value       = module.network.virtual_network_id
}

output "subnet_id" {
  description = "ID de la subred asociada a la red virtual"
  value       = module.network.subnet_id
}

output "public_ip_id" {
  description = "ID del recurso de IP pública"
  value       = module.network.public_ip_id
}

output "public_ip_address" {
  description = "Dirección IP pública asignada a la interfaz de red"
  value       = module.network.public_ip_address
}

output "network_interface_id" {
  description = "ID de la interfaz de red (NIC) asociada a la VM"
  value       = module.network.network_interface_id
}

output "network_interface_name" {
  description = "Nombre de la interfaz de red (NIC) creada"
  value       = module.network.network_interface_name
}
