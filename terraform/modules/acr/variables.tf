variable "acr_name" {
  description = "Nombre del Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del resource group"
  type        = string
}

variable "location" {
  description = "Región donde se desplegará el ACR"
  type        = string
}

variable "sku" {
  description = "SKU del ACR (Basic, Standard, Premium)"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Habilitar acceso admin al ACR"
  type        = bool
  default     = false
}
