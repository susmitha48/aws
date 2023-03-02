output "internet_gateway_id" {
  value       = module.aws_internet_gateway.*.internet_gateway_id
  description = "The internet gateway for vpc has been created"
}
output "transit_gateway" {
    value= module.transit_gateway.aws_ec2_transit_gateway  
}
