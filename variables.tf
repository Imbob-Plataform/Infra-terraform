#Variáveis do Módulo
variable "location" {
  description = "Localização dos recursos"
  type        = string
}

variable "docker_image" {
  description = "Imagem Docker usada no Frontend"
  type        = string
}

variable "pipeline_docker_image" {
  description = "Imagem Docker usada na pipeline"
  type        = string
}

variable "docker_username" {
  description = "Usuário do Docker Hub"
  type        = string
}

variable "docker_password" {
  description = "Senha do Docker Hub"
  type        = string
  sensitive   = true
}

variable "docker_registry_url" {
  description = "URL do Docker Registry"
  type        = string
}

