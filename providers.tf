terraform {
  cloud {

    organization = "bokal-demo"

    workspaces {
      name = "terraform-cloud-integration"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}