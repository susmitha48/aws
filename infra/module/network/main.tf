provider "aws" {
  region = "us-east-1"
}

locals {
  feature_flags = {
    
    provision_internet_gw  = var.provision_internet_gw
    provision_transit_gw   = var.provision_transit_gw
    provision_bastion_host = var.provision_bastion_host
  }
  tags = {
    Customer           = var.customer
    Category           = var.category
    BusinessUnit       = var.business_unit
    ApplicationName    = var.applicationname
    DataClassification = var.data_classification
    ApproverName       = var.approver_name
    Environment        = var.environment
    OwnerName          = var.owner_name
    Contact            = var.contact
  }
}
#--------------------------------------------------------------------
#VPC
#--------------------------------------------------------------------

module "aws_vpc" {
  source                           = "../../resources/aws_vpc"
  vpc_cidr_block 			     = var.vpc_cidr_block
  region                           = var.region
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  tags                             = local.tags
}

#--------------------------------------------------------------------
# Internet Gateway
#--------------------------------------------------------------------
module "aws_internet_gateway" {
  source                           = "../../resources/Internetgateway"
  count                            = local.feature_flags.provision_internet_gw == true ? 1 : 0
  vpc_id                           = module.aws_vpc.id
  tags                             = local.tags
}

#-------------------------------------------------------------------
# Transit Gateway
#-------------------------------------------------------------------
module   "transit_gateway" {
  source                          = "../../resources/transitgateway"
  count                           = local.feature_flags.provision_transit_gw == true ? 1 : 0
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  dns_support                     = var.dns_support
  vpn_ecmp_support                = var.vpn_ecmp_support
  tags                            = local.tags
}
#-------------------------------------------------------------------
#Bastion Host
#-------------------------------------------------------------------
module "bastion_host" {
  source        = "../../resources/bastion_host"
  count         = local.feature_flags.provision_bastion_host == true ? 1 : 0
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
  tags          = local.tags
}
