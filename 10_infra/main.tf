# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket  = "takashi-bucket-test"
    key     = "tastylog-dev.tfstate"
    region  = "ap-southeast-2"
    profile = "terraform"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-southeast-2"
}

provider "aws" {
  alias   = "virginia"
  profile = "terraform"
  region  = "ap-southeast-2"
}
