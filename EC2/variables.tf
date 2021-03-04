variable "region" {
  default = ""
}
variable "ami" {
  description = "list of ami's to use with the ec2."
  type        = map(string)
  default = {
    #Amazon Linux 2.
    AL2-ami = "ami-066c82dabe6dd7f73"
    #Ubuntu 20.04 ami.
    ubuntu = "ami-0ebef2838fb2605b7"
  }
  variable "instance"{
  description = "list of amd instances for an ec2 that work with win server 19&20, Ubuntu 18.04,Cent OS and Amazon Linux 2"
  type = map(string)
  default = {
  //16 vCPUs, 64gb memory, 1x 8gb, & 600 gb storage.
  amd_highend = "g4ad.4xlarge"
  //32 vCPUs, 128gb Memory, 2x 8 gb gpus, & 1200 gb storage.
  amd_advanced = "g4ad.8xlarge"
  //64 vCPUS, 256 gb Memory, 4x 8gb gpus & 2400 gb storage.
  amd_ultra_advanced = "g4ad.16xl"
  }
}
