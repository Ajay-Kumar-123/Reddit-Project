terraform {
  backend "s3" {
    bucket         = "reddit-demo-bucket"
    region         = "ap-south-2"
    key            = "Reddit-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
