terraform {
	backend "s3"{
		bucket = "myterraformprojectwebsiteditiss"
		dynamodb_table = "state-lock"
		key = "global/mystatefile/terraform.tfstate"
		region = "ap-south-1"
		encrypt = true
	}
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
