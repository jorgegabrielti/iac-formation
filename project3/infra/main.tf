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
  region  = var.region
  profile = "terraform"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.ssh_key
  tags = {
    Name = "Terraform Ansible Python"
  }
}

resource "aws_key_pair" "ssh-key" {
  key_name   = var.ssh_key
  public_key = file("${var.ssh_key}.pub")
}

output "public_ip" {
  value = aws_instance.app_server.public_ip  
}