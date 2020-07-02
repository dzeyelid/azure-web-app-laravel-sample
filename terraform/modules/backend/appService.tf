resource "azurerm_app_service" "backend" {
  name                = "app-${var.identifier}-${var.environment}"
  location            = azurerm_resource_group.backend.location
  resource_group_name = azurerm_resource_group.backend.name
  app_service_plan_id = azurerm_app_service_plan.backend.id

  site_config {
    linux_fx_version  = "PHP|7.3"
    php_version       = "7.3"
    always_on         = true
    http2_enabled     = true
    ftps_state        = "Disabled"
  }

  app_settings = {
  }
}