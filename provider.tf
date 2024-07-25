

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "0dfaca14-0226-4e2d-916e-d70a11aaba2e"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
