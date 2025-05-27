terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Use data source to get all availability zones in the region
data "aws_availability_zones" "available" {
  state = "available"
}

# Variables will be defined in variables.tf