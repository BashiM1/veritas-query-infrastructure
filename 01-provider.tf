provider "aws" {
  region = "us-east-1"
  profile = "bash"
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
    key     = "veritas-query/terraform.tfstate"    
    region  = "us-east-1"         
    encrypt = true                
  }
}


