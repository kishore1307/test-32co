terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.41.0"  # Minimum version with all deprecation fixes
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}
