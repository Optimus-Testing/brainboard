resource "azurerm_resource_group" "this" {
  name     = "sai-pbd-runners-prd-usw2-rg-01"
  location = var.location
}