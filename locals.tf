locals {
  apis = {
    terraform_mcp = {
      service_name = "terraform-mcp-api"
      bucket_name  = "terraform-mcp-api"
      env = {
        NODE_ENV = "production"
        # PORT = var.terraform_mcp_api_port
        PUBLIC_BASE_URL = var.public_base_url
        TERRAFORM_API_BASE_URL = var.terraform_api_base_url
        TERRAFORM_ORGANIZATION = var.terraform_organization
        TERRAFORM_ALLOWED_ORGANIZATIONS = var.terraform_allowed_organizations
        REQUEST_TIMEOUT_MS = var.request_timeouts_ms

        AUTH_OAUTH_ENABLED                 = tostring(var.auth_oauth_enabled)
        AUTH_API_KEY_ENABLED               = tostring(var.auth_api_key_enabled)
        OAUTH_ISSUER_URL                   = var.oauth_issuer_url
        OAUTH_AUDIENCE                     = var.oauth_audience
        OAUTH_REQUIRED_SCOPES              = var.oauth_required_scopes
        OAUTH_ALLOWED_SUBJECTS             = var.oauth_allowed_subjects
      }

      secret_env = merge(
        {
          TERRAFORM_API_TOKEN = var.terraform_api_token_secret_id
        },
        var.auth_api_key_enabled
        ? {
            MCP_API_KEY_SECRET = var.mcp_api_key_secret_id
          }
        : {}
      )
    }
  }
}
