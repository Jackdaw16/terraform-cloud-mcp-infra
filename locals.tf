locals {
  apis = {
    terraform_mcp = {
      service_name = "terraform-mcp-api"
      bucket_name  = "terraform-mcp-api"
      env = {
        NODE_ENV     = "production"
        PORT = var.terraform_mcp_api_port
        TERRAFORM_API_BASE_URL = var.terraform_api_base_url
        TERRAFORM_API_TOKEN = var.terraform_api_token
        TERRAFORM_ORGANIZATION = var.terraform_organization
        TERRAFORM_ALLOWED_ORGANIZATIONS = var.terraform_allowed_organizations
        MCP_BEARER_TOKEN = var.mcp_bearer_token
        REQUEST_TIMEOUT_MS = var.request_timeouts_ms
      }
    }
  }
}
