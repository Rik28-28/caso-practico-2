variable "aks_name" {
  type        = string
  description = "Nombre del clúster AKS"
}

variable "location" {
  type        = string
  description = "Ubicación del clúster"
}

variable "resource_group_name" {
  type        = string
  description = "Nombre del resource group"
}

variable "dns_prefix" {
  type        = string
  description = "Prefijo DNS para el clúster"
}


variable "node_count" {
  type        = number
  description = "Cantidad de nodos"
}

variable "vm_size" {
  type        = string
  description = "Tamaño de la VM para los nodos"
}

variable "tags" {
  type        = map(string)
  description = "Etiquetas aplicadas al clúster"
}
