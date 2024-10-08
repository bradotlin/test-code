# Set Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  #region = var.region
  region = terraform.workspace == "default" ? "us-east-1" : "us-west-1"
}

