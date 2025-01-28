resource "azurerm_container_registry" "this" {
  name                = "saipbdprdusw2acr"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = true
}