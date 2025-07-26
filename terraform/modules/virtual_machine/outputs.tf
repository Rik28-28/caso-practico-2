output "vm_id" {
  description = "ID de la máquina virtual"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_name" {
  description = "Nombre de la VM creada"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_private_ip" {
  description = "Dirección IP privada de la VM"
  value       = azurerm_linux_virtual_machine.vm.private_ip_address
}

output "vm_public_ip" {
  description = "Dirección IP pública de la VM"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}
