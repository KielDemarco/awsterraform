#Xeon Scalable Processor, Xeon PLatinum Processor,
#c5 EBS-only,c5d=NVMe
variable "c5" {
  type = map(string)
  default = {
    #vCPU 2, mem 4, net<=10
    c5_large = "c5.large"
    #vCPU 16, mem 32, net<=10
    c5_4xlarge = "c5.4xlarge"
    #vCPU 96, mem 192, net=25
    c5_metal = "c5_metal"
    #vCPU 2, mem 4, net<=10
    c5d_large = "c5d.large"
    #vCPU 16, mem 32, net<=10
    c5d_4xlarge = "c5d.4xlarge"
    #vCPU 96, mem 192, net=25
    c5d_metal = "c5d.metal"
  }
}
#High frequency Intel Xeon E5-2666 v3 (Haswell), EBS-only
variable "c4" {
  type = map(string)
  default = {
    #vCPU 2, mem 3.75, net=moderate
    c4_large = "c5.large"
    #vCPU 4, mem 7.5, net=high
    c4_xlarge = "c5.4xlarge"
    #vCPU 8, mem 15, net=high
    c4_2xlarge = "c5_metal"
    #vCPU 16, mem 30, net=high
    c4_4xlarge = "c5d.large"
    #vCPU 36, mem 60, net=10
    c4_8xlarge = "c5d.4xlarge"
  }
}
