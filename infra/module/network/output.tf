output "aws_vpc.main.id" {
  value       = module.aws_vpc.main.id
  description = "The aws vpc has been created"
}
output "internet_gateway_id" {
  value       = module.aws_internet_gateway.*.internet_gateway_id
  description = "The internet gateway for vpc has been created"
}
output "transit_gateway" {
  value = module.transit_gateway.*.aws_transit_gateway
}



module "aws_vpc" {
  source         = "../../resources/aws_vpc"
  count          = local.feature_flags.aws_vpc == true ? 1 : 0
  vpc_cidr_block = var.vpc_cidr_block
  tags           = local.tags
}