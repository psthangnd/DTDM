terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-2"
}


module "networking" {
  source = "./networking"
}

module "autoscaling" {
  source = "./autoscaling"
}

module "database" {
  source = "./database"
}