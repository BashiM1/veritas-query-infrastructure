provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.14.1"
    }
  }

  backend "s3" {
    bucket  = "veritas-query-terraform" 
    key     = "veritas-query-infrastructure/dev/terraform.tfstate"    
    region  = "us-east-1"         
    encrypt = true                
  }
}