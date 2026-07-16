output "terraform_mcp_url" {
  value = google_cloud_run_v2_service.apis["terraform_mcp"].uri
}

output "artifact_registry_repository" {
  value = google_artifact_registry_repository.apis.repository_id
}
