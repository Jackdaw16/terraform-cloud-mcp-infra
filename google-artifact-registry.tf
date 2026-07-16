resource "google_artifact_registry_repository" "apis" {
  location      = var.gcp_region
  repository_id = "terraform-cloud-mcp"
  description   = "Docker images for terraform-cloud-mcp Cloud Run APIs"
  format        = "DOCKER"
}
