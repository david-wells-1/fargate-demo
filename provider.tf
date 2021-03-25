terraform {
  required_version = ">=0.13.0"

  backend "s3" {
    bucket  = "641621341658-tfstate"
    encrypt = "true"
    key     = "ecs-nginx-demo.tfstate"
    region  = "eu-west-2"
  }
}

provider "aws" {
  region = var.region
}
