output "public_ip" {
  description = "Public IP of the Bastion Host"
  value       = aws_instance.main.public_ip
}
output "private_ip" {
  description = "Private IP of the Bastion Host"
  value       = aws_instance.main.private_ip
}
output "instance_id" {
  description = "ID of the Bastion Host"
  value       = aws_instance.main.id
}