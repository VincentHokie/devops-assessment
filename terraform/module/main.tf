/*
  see the repository readme about using either the "shared_credentials_file"
  or "profile" key for AWS authentication
*/

provider "aws" {
  region  = "us-east-1"
  version = "1.35"

  shared_credentials_file = "../../../shared/credentials"
  profile = "personal"
}

# terraform {
#   backend "s3" {
#     bucket = "assessment-terraform-state"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }
