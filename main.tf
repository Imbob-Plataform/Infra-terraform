#Ponto central que gerencia os módulos
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "62a47bad-99aa-450d-a7e2-ef75d08015f4"
}

module "frontend" {
  source       = "./modules/frontend"
  app_name     = "imbob-view"
  location     = var.location
  docker_image = var.docker_image
}

module "pipeline" {
  source                = "./modules/pipeline"
  app_name              = "sinapi-pipeline"
  location              = var.location
  pipeline_docker_image = var.pipeline_docker_image
  docker_username       = var.docker_username
  docker_password       = var.docker_password
  docker_registry_url   = var.docker_registry_url
}

