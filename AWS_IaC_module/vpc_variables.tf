variable "region" {
  default = "us-east-1"
}
variable "public_cidr" {
  type    = list(string)
  default = ["31.10.1.0/24", "31.10.4.0/24"]
}
variable "private_cidr" {
  default = ["31.10.2.0/24", "31.10.3.0/24"]
}
variable "vpc_cidr" {
  type    = string
  default = "31.10.0.0/16"
}
