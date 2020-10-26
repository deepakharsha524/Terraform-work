# Terraform-work

'The Amazon Web Services (AWS) provider is used to interact with the many resources supported by AWS. The provider needs to be configured with the proper credentials before it can be used


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

  terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}


# Git hub link https://github.com/wardviaene/terraform-course

# Useful Commands
$ terraform plan                                  # plan

$ terraform apply                                 # shortcut for plan & apply - avoid this in production

$ terraform plan -out out.terraform      # terraform plan and write the plan to out file

$ terraform apply out.terraform            # apply terraform plan using out file

$ terraform show                                  # show current state

$ cat terraform.tfstate                           # show state in JSON format

# Reference Documentation
Download URL: https://www.terraform.io/downloads.html

AWS Resources: https://www.terraform.io/docs/providers/aws/

List of providers: https://www.terraform.io/docs/providers/index.html
