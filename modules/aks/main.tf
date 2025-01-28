resource "azurerm_kubernetes_cluster" "this" {
  name                = "sai-pbd-runners-prd-usw2-aks-01"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "sai-pbd-runners"

  default_node_pool {
    name       = "agentpool"
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = var.aks_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }
}