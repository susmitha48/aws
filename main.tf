terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.2"
    }
  }
  /*cloud {
    organization = "shining"
    workspaces {
      name = "aws"
    }
  }*/
} 
provider "aws" {
  region = "ap-south-1"
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}
terraform {
  backend "s3" {
    bucket = "backend"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tfstateforgithubactions"
    profile = "githubactions"
  }
}
