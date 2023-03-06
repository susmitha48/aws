##########################################################
# Provisioning flags
##########################################################

provision_internet_gw = true
provision_transit_gw  = false

##########################################################
# VPC
##########################################################
region                           = "us-east-1"
vpc_cidr_block                   = "10.1.0.0/16"
instance_tenancy                 = "default"
enable_dns_hostnames             = false
enable_dns_support               = false
assign_generated_ipv6_cidr_block = false

##########################################################
# TAGs
##########################################################
customer              = "org"
category              = "core" #platform, core, app
business_unit         = "OneDeliver"
applicationname       = "CloudFoundationLZ"
applicationname_short = "cf"
data_classification   = "Private"
approver_name         = "amarjeet.c.singh@capgemini.com"
environment           = "Dev"
environment_short     = "d"
owner_name            = "jayanto.mukherjee@capgemini.com"
contact               = "mahesh.jadhav@capgemini.com"
