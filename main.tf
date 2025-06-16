#Ponto central que gerencia os módulos
terraform {
   required_providers{
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

provider "azurerm"{
  features {

  }
}

module "frontend" {
  source   = "./modules/frontend"
  app_name = "Imbob-View"
  location = var.location
}

module "pipeline" {
  source              = "./modules/pipeline"
  app_name            = "Sinapi-Pipeline"
  location            = var.location
  docker_image        = var.pipeline_docker_image
  docker_registry_url = var.docker_registry_url
  docker_username     = var.docker_username
  docker_password     = var.docker_password
}
