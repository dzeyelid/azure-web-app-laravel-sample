  provider "azurerm" {
  version = "~> 2.16"
  features {}
}

module "backend" {
  source = "../../modules/backend"

  environment = var.environment
  location    = var.location
  identifier  = var.identifier
}
