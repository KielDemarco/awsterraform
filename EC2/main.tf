terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
//provider and region used for IaC.
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
//Code for T2 instances.
resource "aws_instance" "example" {
  ami                    = ""
  instance_type          = lookup(var.t2_instances, "t2_nano", "t2.nano")
  vpc_security_group_ids = [""]
  subnet_id              = ""
  count                  = var.ec2_count1
  tags = {
    Name = "example"
  }
}

//code for m4 instances.
resource "aws_instance" "example" {
  ami                    = ""
  instance_type          = lookup(var.m4_instances, "m4_large", "m4.large")
  vpc_security_group_ids = [""]
  subnet_id              = ""
  count                  = var.ec2_count2
  tags = {
    Name = "example"
  }
}
//key pair for ec2. Make another if more is needed.
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa my-public-key email@example.com"
}
