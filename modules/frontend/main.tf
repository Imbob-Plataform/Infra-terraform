#Ponto que gerencia o frontend
resource "azurerm_resource_group" "rg" {
  name     = "${var.app_name}-rg"
  location = var.location
}

resource "azurerm_service_plan" "plan" {
  name                = "${var.app_name}-plan"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"

  sku_name = "F1"
}

resource "azurerm_linux_web_app" "app" {
  name                = var.app_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    application_stack {
      docker_image_name = var.docker_image
    }

    always_on = false
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
}
