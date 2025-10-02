variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Project     = "veritas-query"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "veritas-query"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
  default     = "rossislike"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "veritas-query"
}

variable "github_branch" {
  description = "GitHub branch to track"
  type        = string
  default     = "dev"
}

variable "state_bucket" {
  description = "S3 bucket for storing Terraform state"
  type        = string
  default     = "veritas-query-terraform"
}

variable "codestar_connection_arn" {
  description = "ARN of the CodeStar Connections connection"
  type        = string
  default     = "arn:aws:codestar-connections:us-east-1:123456789012:connection/abcd1234-ef56-7890-ab12-cd34ef56gh78"
}

