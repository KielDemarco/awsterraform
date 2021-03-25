variable "region" {
  default = "#enter region here"
}
variable "public_cidr" {
  type    = list(string)
  default = ["#enter cidr here", "#enter cidr here"]
}
variable "private_cidr" {
  default = ["#enter cidr here", "#enter cidr here"]
}
variable "vpc_cidr" {
  type    = string
  default = "#enter cidr here"
}
