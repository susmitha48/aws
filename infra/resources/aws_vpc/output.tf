output "vpc" {
  value       = aws_vpc.main.id
  description = "The vpc has been created"
}