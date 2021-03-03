#cidr for the vpc
output "vpc_cidr_out" {
  description = "the vpc cidr_block id"
  value = aws_vpc.vpc.cidr_block
  sensitive = true
}
#cidr for the private subnet.
output "priv_sub_out"{
  description = "cidr of the private subnet."
  value = aws_subnet.private_subnet1.cidr_block
  sensitive = true
}
#cidr for the public subnet.
output "pub_sub_out"{
  description = "cidr of the public subnet."
  value = aws_subnet.public_subnet1.cidr_block
  sensitive = true
}