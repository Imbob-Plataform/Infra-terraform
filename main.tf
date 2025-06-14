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

module "backend" {
  source   = "./modules/backend"
  app_name = "Sinapi-Pipeline"
  location = var.location
}

module "analise_dados" {
  source   = "./modules/analise_dados"
  app_name = "Sinapi-Analysis"
  location = var.location
}
