output "instance1" {
  description = "First set of EC2s"
  value       = aws_instance.i1
  sensitive   = true
}
output "instance2" {
  description = "the 2nd set of EC2s."
  value       = aws_instance.i2
  sensitive   = true
}