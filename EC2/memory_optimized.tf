#3.1 ghz Intel Xeon, up to 768 GiB, net=Gbps, r5=EBS-Only, r5d=nvme
variable "r5 instances" {
  type = map(string)
   default = {
    #vCPU 2, mem 16,net=10
    r5.large = "r5.large"
    # vCPU 1, mem 1, net=10,
    r5_8xlarge = "r5.8xlarge"
    # vCPU 96, mem 768, net=25
    r5_metal = "r5.metal"
    # vCPU 2, mem 16, net=10
    r5d_large = "r5d.large"
    # vCPu 32, mem 256, net=10
    r5d_8xlarge = "r5d.8xlarge"
    #vCPU 96, mem 768, net=25
     r5d.metal = "r5d.metal"
  }
}
#Intel Xeon E7-8880 v3, 3,904 GB DRAM, SSD Instance Storage
variable "X1e"{
  type = map(string)
  default = {
    #vCPU 4, Mem=122, net<=10
    x1e_xlarge = "x1e.xlarge"
    #vCPU 8, Mem=244, net<=10
    x1e_2xlarge = "x1e.2xlarge"
    #vCPU 16, Mem=488, net<=10
    x1e_4xlarge = "x1e.4xlarge"
    #vCPU 32, Mem=976, net<=10
    x1e_8xlarge = "x1e.8xlarge"
    #vCPU 64, Mem=1,952, net=10
    x1e_16xlarge = "x1e.16xlarge"
    #vCPU 128, Mem=3,904, net=25
    x1e_32xlarge = "x1e.32xlarge"
  }

  }