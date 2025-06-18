#Saída Frontend
output "app_url" {
  description = "URL pública do frontend"
  value       = azurerm_linux_web_app.app.default_hostname
}
