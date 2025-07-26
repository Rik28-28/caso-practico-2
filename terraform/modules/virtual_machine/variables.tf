variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
}

variable "location" {
  description = "Región donde se desplegará la VM"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "vm_size" {
  description = "Tamaño de la VM (SKU)"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nombre del usuario administrador para acceso SSH"
  type        = string
}

variable "public_key_path" {
  description = "Ruta al archivo de clave pública SSH"
  type        = string
}

variable "network_interface_id" {
  description = "ID de la NIC que se asociará a la VM"
  type        = string
}

variable "image_publisher" {
  description = "Proveedor de la imagen base"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Oferta de la imagen"
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "SKU de la imagen"
  type        = string
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "Versión de la imagen"
  type        = string
  default     = "latest"
}
