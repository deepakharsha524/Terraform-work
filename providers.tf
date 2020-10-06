provider "aws" {
  region     = "${var.aws_region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}



data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

