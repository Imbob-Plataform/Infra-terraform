#Variáveis frontend
variable "app_name" {
  description = "Nome da aplicação frontend"
  type        = string
}

variable "location" {
  description = "Localização dos recursos no Azure"
  type        = string
}

variable "docker_image" {
  description = "Imagem Docker usada no App Service"
  type        = string
}





