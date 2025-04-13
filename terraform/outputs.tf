
output "instance_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.devops_demo.public_ip
}
