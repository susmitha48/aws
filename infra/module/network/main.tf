provider "aws" {
  region = "us-east-1"
}

locals {
  feature_flags = {
    provision_internet_gw = var.provision_internet_gw
    provision_transit_gw  = var.provision_transit_gw
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
# Internet Gateway
#--------------------------------------------------------------------
module "aws_internet_gateway" {
  source = "../../resources/Internetgateway"
  count  = local.feature_flags.provision_internet_gw == true ? 1 : 0
  vpc_id = var.vpc_id
  tags   = local.tags
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