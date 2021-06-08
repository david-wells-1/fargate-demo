terraform {
  required_version = ">=0.13.0"

  backend "s3" {
    bucket  = "ACCOUNT_ID_REMOVED-tfstate"
    encrypt = "true"
    key     = "ecs-nginx-demo.tfstate"
    region  = "eu-west-2"
  }
}

provider "aws" {
  region = var.region
}
