terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket         = "s3-dx-statefile"
    region         = "us-east-1"
    key            = "terraform/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  
  }
}