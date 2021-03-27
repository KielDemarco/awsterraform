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
  region  = var.region
}
//Code for T2 instances.
resource "aws_instance" "i1" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = lookup(var.t2_instances, "t2_nano", "t2.nano")
  vpc_security_group_ids = [var.sec_group]
  subnet_id              = var.pub_sub
  count                  = 1
  tags = {
    Name = "i1"
  }
}

//code for m4 instances.
resource "aws_instance" "i2" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = lookup(var.m4_instances, "m4_large", "m4.large")
  vpc_security_group_ids = [var.sec_group]
  subnet_id              = var.pub_sub
  count                  = 1
   tags = {
     Name = "i2"
   }
  }

//key pair for ec2. Make another if more is needed.
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa my-public-key email@example.com"
}
