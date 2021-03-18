#https://aws.amazon.com/ec2/instance-types/ for more ec2 types.
variable "region" {
  default = "us-west-1"
}
variable "ec2_count_i1" {
  default = 1
}
variable "ec2_count_i2" {
  default = 1
}
#genral purpose burstable instances; ebs only storage.
variable "t2_instances" {
  type = map(string)
  default = {
    #vCPU 1, mem 0.5,net=low
    t2_nano = "t2.nano"
    # vCPU 1, mem 1, net=low-mod, free tier
    t2_micro = "t2.micro"
    # vCPU 2, mem 4, net=low-mod
    t2_medium = "t2.medium"
    # vCPU 2, mem 8, net=low-mod
    t2_large = "t2.large"
  }

}
#general purpose balanced instances; ebs-only storage.
variable "m4_instances"{
  type = map(string)
  default = {
    # 2 vCPU, 8 mem, ebs-band 450 Mbps, net=moderate
    m4_large = "m4.large"
    # 4 vCPU, 16 mem, ebs-band 750mbps, net=high
    m4_xlarge = "m4.xlarge"
    # 8 vCPU, 32 mem, ebs-only=band 1000mbps, net=high
    m4_2xlarge = "m4.2xlarge"
    # 16 vCPU, 64 mem, ebs-only=band 20000mbps, net=high
    m4_4xlarge = "m4.4xlarge"
  }
}
