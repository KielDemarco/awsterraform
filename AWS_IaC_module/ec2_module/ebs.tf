resource "aws_ebs_volume" "e1" {
  availability_zone = element(var.us_east_az, 0)
  size              = 40

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.e1.id
  instance_id = aws_instance.i1.id
}
resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = aws_ebs_volume.e1.id

  tags = {
    Name = "HelloWorld_snap"
  }
}