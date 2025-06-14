#Gerenciamento de Resultados de cada um dos microsserviços
output "frontend_url" {
  description = "URL do serviço frontend"
  value       = module.frontend.app_url
}

output "backend_url" {
  description = "URL do serviço backend"
  value       = module.backend.app_url
}

output "analise_dados_url" {
  description = "URL do serviço de análise de dados"
  value       = module.analise_dados.app_url
}
