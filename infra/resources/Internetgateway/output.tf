output "internet_gateway_id" {
  value       = aws_internet_gateway.internet_gateway.id
  description = "The internet gateway for vpc has been created"
}