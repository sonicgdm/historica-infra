provider "aws" {
  region  = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket = "tf.infra"
    key = "sagemaker/terraform.tfstate"
    region = "eu-central-1"
  }
}

