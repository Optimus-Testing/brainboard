resource "azurerm_virtual_network" "this" {
  name                = "sai-pbd-runners-prd-usw2-vnet-01"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.224.24.0/23"]
}

resource "azurerm_subnet" "aks" {
  name                 = "sai-pbd-runners-prd-aks-snet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.224.24.64/26"]
}