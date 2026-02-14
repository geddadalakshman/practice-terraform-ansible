terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }

  backend "s3" {
    bucket = "devops71-tf-state"
    key = "terraform/state/terraform.tfstate"
    region = "ap-south-1"
  }
}


