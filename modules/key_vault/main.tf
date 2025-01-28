resource "azurerm_key_vault" "this" {
  name                = "sai-pbd-prd-usw2-kv-01"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id
}