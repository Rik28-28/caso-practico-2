terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

module "azurerm_resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = module.azurerm_resource_group.resource_group_location
}

module "vm" {
  source               = "../../modules/virtual_machine"
  vm_name              = "vm-cp2"
  location             = var.location
  resource_group_name  = var.resource_group_name
  vm_size              = "Standard_B1s"
  admin_username       = var.admin_username
  public_key_path      = var.public_key_path
  network_interface_id = module.network.network_interface_id
}

module "acr" {
  source              = "../../modules/acr"
  acr_name            = "acrcp2"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}

module "aks" {
  source              = "../../modules/aks"
  aks_name            = "aks-cp2"
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location            = var.location
  dns_prefix          = "dns-cp2"
  acr_id              = module.acr.acr_id
  node_count          = 1
  vm_size             = "Standard_B1s"
  tags = {
    namespace = "dev"
  }
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  principal_id         = module.aks.kubelet_object_id
  role_definition_name = "AcrPull"
  scope                = module.acr.acr_id
}

