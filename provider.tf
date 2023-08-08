

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "db78d611-9baf-4c08-8bc8-5279ad78ba56-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
