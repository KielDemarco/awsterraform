variable "region" {
  default = "us-west-1"
}

variable "username" {
  type    = list(string)
  default = ["ec2-Beta", "ec2-Charlie", "ec2-Delta", "ec2-Epsilon", "ec2-Foxtrot", "ec2-Golf", "ec2-Harry"]
}