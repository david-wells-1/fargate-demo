terraform {
  required_version = ">=0.13.0"

  backend "s3" {
    bucket  = "YOUR_AWS_ACCOUNT_ID_HERE-tfstate"
    encrypt = "true"
    key     = "fargate-demo.tfstate"
    region  = "eu-west-2"
  }
}

provider "aws" {
  region = var.region
}
