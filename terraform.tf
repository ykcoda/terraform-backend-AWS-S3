terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }

}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      envirnment = "test"
      project = "web-server"
    }
  }
}