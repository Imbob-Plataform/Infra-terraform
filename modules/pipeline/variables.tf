#Variáveis pipeline
variable "app_name" {
  description = "Nome da aplicação da pipeline"
  type        = string
}

variable "location" {
  description = "Localização dos recursos"
  type        = string
}

variable "docker_username" {
  description = "Usuário do Docker Registry"
  type        = string
}

variable "docker_password" {
  description = "Senha do Docker Registry"
  type        = string
  sensitive   = true
}

variable "pipeline_docker_image" {
  description = "Imagem Docker da pipeline"
  type        = string
}

variable "docker_registry_url" {
  description = "URL do Docker Registry"
  type        = string
}

