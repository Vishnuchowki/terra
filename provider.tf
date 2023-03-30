terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">1.0.0"
  backend "s3" {
    bucket         = "terraformremotebackendvc"
    key            = "classes/statefile"
    dynamodb_table = "terraformlock"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region

}