#Saída Frontend
output "app_url" {
  description = "https://github.com/Imbob-Plataform/Imbob-View.gito"
  value       = azurerm_app_service.app.default_site_hostname
}
