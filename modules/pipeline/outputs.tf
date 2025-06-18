#Saída Pipeline
output "pipeline_url" {
  description = "URL pública da Pipeline"
  value       = azurerm_container_app.pipeline.latest_revision_fqdn
}
