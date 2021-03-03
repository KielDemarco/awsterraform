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
    #kali linux ami.
    kali-ami = "ami-036ce2d3945b0c79a"
    #amazon linux ami with nvidia tesla driver.
    ALNvidia-tesla = "ami-09144ebbb8d7191e3"
    #optimized deep learning environment by nvidia.
    Nvidia-DL-AMI = "ami-04c0416d6bd8e4b1f"
    # ubuntu deep learning ami 18.04
    DL-Ubuntu-ami = "ami-0fe05354c2b605fe4"
    #Amazon linux 2 Deep Learning AMI
    AL2-ami = "ami-09d540cb66f1315ee"
  }
  variable "instance"{
  description = "list of instances for an ec2 that work with win server 19&20, Ubuntu 18.04,Cent OS and Amazon Linux 2"
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
