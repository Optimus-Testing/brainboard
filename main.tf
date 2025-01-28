module "resource_group" {
  source              = "./modules/resource_group"
  location            = var.location
}

module "networking" {
  source              = "./modules/networking"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  node_count          = var.node_count
  vm_size             = var.vm_size
  aks_subnet_id       = module.networking.vnet_name
}

module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
}

module "container_registry" {
  source              = "./modules/container_registry"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}