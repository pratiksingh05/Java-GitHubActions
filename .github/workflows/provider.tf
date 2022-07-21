terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.61.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0.1"
    }
  }
  required_version = ">= 0.13"
}

provider "aws" {
  version = "~>3.0"
  region  = "us-east-1"
}