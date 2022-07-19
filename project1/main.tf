terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_instance" "app_server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  tags = {
    Name = "Terraform Ansible Python"
  }
}
