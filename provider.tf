provider "aws" {
   region = "us-east-1"
 }

terraform {
  backend "s3" {
    bucket = "ekc-terraform-state-file"
    key    = "eks.tfstate"
    region = "us-east-1"
  }
}
