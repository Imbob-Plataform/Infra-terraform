resource "azurerm_resource_group" "rg" {
  name     = "${var.app_name}-rg"
  location = var.location
}

resource "azurerm_container_app_environment" "env" {
  name                = "${var.app_name}-env"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}


resource "azurerm_container_app" "pipeline" {
  name                         = var.app_name
  container_app_environment_id = azurerm_container_app_environment.env.id
  resource_group_name          = azurerm_resource_group.rg.name
  revision_mode                = "Single"

  secret {
    name  = "docker-password"
    value = var.docker_password
  }

  registry {
    server               = var.docker_registry_url
    username             = var.docker_username
    password_secret_name = "docker-password"
  }

  template {
    container {
      name   = "pipeline"
      image  = var.pipeline_docker_image
      cpu    = 0.5
      memory = "1.0Gi"
    }
  }

  ingress {
    external_enabled = true
    target_port      = 80

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
