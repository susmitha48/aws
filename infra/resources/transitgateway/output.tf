output "aws_transit_gateway" {
  description = "ID of the AWS Transit Gateway"
  value       = aws_ec2_transit_gateway.main.id
}
