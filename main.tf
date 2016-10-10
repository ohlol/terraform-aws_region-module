provider "aws" {
  region = "${var.region}"
}

resource "terraform_remote_state" "global" {
  backend = "s3"
  config = {
    bucket = "scott"
    key = "terraform/global/terraform.tfstate"
    region = "us-east-1"
  }
}
