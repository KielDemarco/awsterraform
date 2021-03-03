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
  region  = "us-west-1"
}
//Code for T2 instances.
resource "aws_instance" "T2" {
  ami                    = ""
  instance_type          = "t2.micro"
  vpc_security_group_ids = [""]
  subnet_id              = ""
  count                  = "" #enter a var.count variable here.

  tags = {
    Name = "T2"
  }
}

//code for m4 instances.
resource "aws_instance" "Udacity_M4" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = "m4.large"
  vpc_security_group_ids = [""]
  subnet_id              = ""
  count                  = #enter a var.count variable here.
  tags = {
    Name = "M4"
  }
}
//key pair for ec2. Make another if more is needed.
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa my-public-key email@example.com"
}