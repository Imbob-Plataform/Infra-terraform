#Gerenciamento de Resultados de cada um dos microsserviços
output "frontend_url" {
  description = "URL pública do frontend"
  value       = module.frontend.app_url
}


