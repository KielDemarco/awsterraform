#nvidia g4dn accelerated computing instances; instance storage type.
variable "nvidia_g4"{
  type = map(string)
  default = {
    #1 vGPU, 4 vCPU, 16 mem, 16 GPU mem, 125 gb, net=25gbps
    g4dn_xlarge = "g4dn.xlarge"
    #1 vGPU, 8 vCPU, 32 mem, 16 GPU mem, 225 gb, net=25gbp
    g4dn_2xlarge = "g4dn.2xlarge"
    #1 vGPU, 16 vCPU, 64 mem, 16 GPU mem, 225 gb, net=25gbp
    g4dn_4xlarge = "g4dn.4xlarge"
    #8 vGPU, 96 vCPU, 384 mem, 128 GPU mem, 2x900 gb, net=100gbp
    g4dn_metal = "g4dn_metal"
  }
}
#amd accelerated computing instances
  variable "amd_g4"{
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
