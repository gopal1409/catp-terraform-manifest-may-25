#this provider block is used for declare the cloud service provider configuration
#the code is already build you just need to use the same 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "gopal14099" #replace with your bucket name
    key            = "prod/prod.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  
}

