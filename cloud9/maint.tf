terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_cloud9_environment_ec2" "CloudScrap" {
  instance_type               = lookup(var.t2_instances, "t2_micro", "t2.micro")
  name                        = "CloudScrap"
  automatic_stop_time_minutes = var.a-stop-time
  subnet_id                   = #enter subnet here  either a premade subnet using " " or if using a module use aws_subnet.example.id.
}

