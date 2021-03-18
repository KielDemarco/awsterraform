#ami's used with an ec2 instance.
variable "ami" {
  description = "list of ami's to use with the ec2."
  type        = map(string)
  default = {
    #Amazon Linux 2.
    AL2-ami = "ami-066c82dabe6dd7f73"
    #Ubuntu 20.04 ami.
    ubuntu = "ami-0ebef2838fb2605b7"
  }
}
