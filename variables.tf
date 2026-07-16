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

variable "terraform_api_token" {
  type = string
  sensitive = true
}

variable "terraform_organization" {
  type = string
  sensitive = false
}

variable "terraform_allowed_organizations" {
  type = string
  sensitive = false
}

variable "mcp_bearer_token" {
  type = string
  sensitive = true
}

variable "request_timeouts_ms" {
  type = number
  sensitive = false
  default = 15000
}