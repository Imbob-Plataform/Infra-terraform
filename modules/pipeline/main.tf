# Ponto que gerencia a pipeline
resource "azurerm_resource_group" "rg" {
  name     = "${var.app_name}-rg"
  location = var.location
}

resource "azurerm_app_service_plan" "plan" {
  name                = "${var.app_name}-plan"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Free"
    size = "F1"
