module "vpc_module" {
  source       = "../AWS_module/vpc_module"
  vpc_cidr     = var.vpc_cidr
  public_cidr  = var.public_cidr
  private_cidr = var.private_cidr
  region       = var.region
}
module "ec2_module" {
  source       = "../AWS_module/ec2_module"
  ami          = var.ami
  t2_instances = var.t2_instances
  m4_instances = var.m4_instances
  region       = var.region
}