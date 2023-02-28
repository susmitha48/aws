provider "aws" {
  region = "us-east-1"
}

locals {
  feature_flags = {
    provision_internet_gw = var.provision_internet_gw
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