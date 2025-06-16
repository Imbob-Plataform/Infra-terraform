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
