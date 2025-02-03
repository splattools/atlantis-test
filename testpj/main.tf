provider "aws" {
  region  = "ap-northeast-1"
  profile = "sandbox-prof"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    profile = "sandbox-prof"
    bucket  = "tazima-terraform-bucket"
    key     = "backend/terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}