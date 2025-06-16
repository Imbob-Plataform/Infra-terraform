#Saída Pipeline
output "pipeline_url" {
  description = "https://github.com/Imbob-Plataform/IPCA-pipeline.git"
  value       = azurerm_app_service.app.default_site_hostname
}
