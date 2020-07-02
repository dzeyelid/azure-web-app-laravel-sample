resource "azurerm_application_insights" "backend" {
  name                = "appi-${var.identifier}-${var.environment}"
  location            = azurerm_resource_group.backend.location
  resource_group_name = azurerm_resource_group.backend.name
  application_type    = "web"
}
