variable "gcp_project_id" {
  description = "Google Cloud project id."
  type        = string
}

variable "gcp_region" {
  description = "Google Cloud region for Cloud Run and Artifact Registry."
  type        = string
  default     = "europe-southwest1"
}

# ENV VARIABLES

variable "public_base_url" {
  description = "Public base URL of the MCP service, without trailing slash."
  type        = string
}

variable "auth_oauth_enabled" {
  type    = bool
  default = true
}

variable "auth_api_key_enabled" {
  type    = bool
  default = false
}

variable "oauth_issuer_url" {
  description = "Auth0 issuer URL, including tenant domain."
  type        = string
}

variable "oauth_audience" {
  description = "Canonical MCP OAuth resource identifier."
  type        = string
}

variable "oauth_required_scopes" {
  type    = string
  default = "terraform:read"
}

variable "oauth_allowed_subjects" {
  description = "Comma-separated Auth0 subject allowlist."
  type        = string
}

variable "terraform_api_token_secret_id" {
  type    = string
  default = "terraform-mcp-terraform-api-token"
}

variable "mcp_api_key_secret_id" {
  type    = string
  default = "terraform-mcp-api-key"
}

variable "terraform_mcp_api_port" {
  type = number
  sensitive = false
  default = 3000
}

variable "terraform_api_base_url" {
  type = string
  sensitive = false
  default = "https://app.terraform.io/api/v2"
}

variable "terraform_organization" {
  type = string
  sensitive = false
}

variable "terraform_allowed_organizations" {
  type = string
  sensitive = false
}

variable "request_timeouts_ms" {
  type = number
  sensitive = false
  default = 15000
}