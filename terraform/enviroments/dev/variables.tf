variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
}

variable "location" {
  description = "Ubicación del resource group"
  type        = string
  default     = "eastus2"
}

variable "public_key_path" {
  description = "Ruta de la clave pública SSH"
  type        = string
}

variable "admin_username" {
  description = "Nombre de usuario del administrador de la máquina virtual"
  type        = string
}
