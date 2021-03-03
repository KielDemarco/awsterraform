terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# Creates a VPC.
resource "aws_vpc" "us_west_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name     = "us_west"
    Location = "California"
  }
}
//creates a private subnet. repeat code for another subnet.
resource "aws_subnet" "private_subnet1" {
  vpc_id                  = aws_vpc.us_west_vpc.id
  cidr_block              = var.private_cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "west_private_subnet1"
  }
}
#creates a public subnet. repeat code for more.
resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.us_west_vpc.id
  cidr_block              = var.public_cidr
  map_public_ip_on_launch = false
  tags = {
    Name = "west_public_subnet1"
  }
}
/* Routing table for private subnet */
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.us_west_vpc.id
  tags = {
    Name = "private-west-rt"
  }
}
/* Routing table for public subnet */
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.us_west_vpc.id
  tags = {
    Name = "public-west-rt"
  }
}
/* Route table associations */
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private.id
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.us_west_vpc.id

  tags = {
    Name = "west-gateway"
  }
}
#Elastic IP for NAT.
resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.gw]
}
resource "aws_nat_gateway" "gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet1.id
}

