terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  backend "s3" {
    bucket         = "seanih-tf-state-bucket"
    key            = "state_backend/terraform.tfstate"
    region         = "us-east-1"
    
    # Enable native S3 state locking (Terraform 1.10+)
    use_lockfile   = true
    
    # Encrypt state file at rest
    encrypt        = true
  }

  required_version = ">= 1.2"
}
