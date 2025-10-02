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
  default     = "BashiM1"
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
  default     = "arn:aws:codeconnections:us-east-1:493162620475:connection/295d3728-1913-46b6-8346-689a3064bff4"
}

