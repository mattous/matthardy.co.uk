terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }

    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }

  backend "s3" {
    bucket = "tf-mattous-state"
    key    = "state-matthardy-co.uk"
    region = "eu-west-2"
  }

}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Environment = "Test"
      Owner       = "Mattous"
      Project     = "matthardy.co.uk"
    }
  }
}