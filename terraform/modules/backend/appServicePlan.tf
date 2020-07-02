variable app_service_plan_sku_tier {
  type        = string
  default     = "PremiumV2"
  description = "Valid options are 'Free', 'Shared', 'Basic', 'Standard', 'PremiumV2' and 'Isolated'."
}

variable app_service_plan_sku_size {
  type        = string
  default     = "P1v2"
  description = "Valid options are 'B1', 'B2', 'B3', 'D1', 'F1', 'I1', 'I2', 'I3', 'P1v2', 'P2v2', 'P3v2', 'PC2', 'PC3', 'PC4', 'S1', 'S2', 'S3' and 'SHARED'."
}

resource "azurerm_app_service_plan" "backend" {
  name                = "plan-${var.identifier}-${var.environment}"
  location            = azurerm_resource_group.backend.location
  resource_group_name = azurerm_resource_group.backend.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = var.app_service_plan_sku_tier
    size = var.app_service_plan_sku_size
  }
}