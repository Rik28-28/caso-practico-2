terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.10.0"
    }
  }
}

provider "azurerm" {
  features {}
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
  source              = "../../modules/virtual_machine"
  vm_name             = "vm-cp2"
  location            = var.location
  resource_group_name = var.resource_group_name
  vm_size             = "Standard_B1s"
  admin_username      = var.admin_username
  public_key_path     = var.public_key_path
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
