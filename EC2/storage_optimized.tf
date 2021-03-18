#Intel Xeon E5-2686 v4 (Broadwell) Processors, NVMe SSD
variable "i3"{
  type = map(string)
  default = {
    #vCPU 2, mem 15.25, net<=10
    i3_large = "i3.large"
    #vCPU 4, mem 30.5, net<=10
    i3_xlarge = "i3.xlarge"
    #vCPU 8, mem 61, net<=10
    i3_2xlarge = "i3.2xlarge"
    #vCPU 16, mem 122, net<=10
    i3_4xlarge = "i3.2xlarge"
    #vCPU 32, mem 244, net=10
    i3_8xlarge = "i3.2xlarge"
    #vCPU 64, mem 488, net=25
    i3_16xlarge = "i3.2xlarge"
    #vCPU 72, mem 512, net=25
    i3_metal = "i3,metal"


  }
}
#High-frequency Intel Xeon E5-2676 v3 (Haswell), HDD storage
variable "D2"{
  type = map(string)
  default = {
    #vCPU 4, mem 30.5, net=mod
    d2_xlarge = "d2.xlarge"
    #vCPU 8, mem 61, net=high
    d2_2xlarge = "d2.2xlarge"
    #vCPU 16, mem 122, net=high
    d2_4xlarge = "d2.2xlarge"
    #vCPU 36, mem 244, net=10
    d2_8xlarge = "d2.2xlarge"
  }
}
#High-frequency Intel Xeon E5-2676 v3 (Haswell), HDD storage
variable "H1"{
  type = map(string)
  default = {
    #vCPU 8, mem 32, net<=10
    h1_2xlarge = "h1.2xlarge"
    #vCPU 16, mem 64, net<=10
    h1_4xlarge = "h1.2xlarge"
    #vCPU 36, mem 128, net=10
    h1_8xlarge = "h1.2xlarge"
    #vCPU 64, mem 256, net=25
    h1_16xlarge = "h1.16xlarge"
  }
}