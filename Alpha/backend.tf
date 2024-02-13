terraform {
  required_version = "<= 1.5.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    encrypt        = true
    bucket         = "devops-backend-tfstate"
    dynamodb_table = "devops-state-locking"
    key            = "alpha.tfstate"
    region         = "us-east-1"
  }
}