variable "provision_internet_gw" {
  type        = bool
  default     = false
  description = "If AWS internet gateway should be provisioned or not?"
}
variable "provision_transit_gw" {
  type        = bool
  default     = false
  description = "If AWS transit gateway should be provisioned or not?"
}
/*variable "provision_bastion_host" {
  type        = bool
  default     = false
  description = "If aws bastion host should be provisioned or not?"
}*/

###################################################
# TAGs
###################################################
variable "customer" {
  type = string
}
variable "category" {
  type = string
}
variable "environment" {
  type = string
}
variable "environment_short" {
  type = string
}
variable "business_unit" {
  type = string
}
variable "applicationname" {
  type = string
}
variable "applicationname_short" {
  type = string
}
variable "approver_name" {
  type = string
}
variable "owner_name" {
  type = string
}
variable "data_classification" {
  type = string
}
variable "contact" {
  type = string
}
###################################################
#VPC
###################################################
variable "region" {
  type        = string
  description = "Region to deploy AWS services"
}
variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}
variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  type        = bool
}
variable "assign_generated_ipv6_cidr_block" {
  description = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
  type        = bool
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC."
  type        = string
}
variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false."
  type        = bool
}
###################################################
# Internet gateway
###################################################
variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
  default     = {}
}
#################################################
# transit_gateway
##################################################
variable "auto_accept_shared_attachments" {
  type        = string
  description = "Whether resource attachment requests are automatically accepted. Valid values: disable, enable. Default value: disable."
  default     = "disable"
}
variable "default_route_table_association" {
  type        = string
  description = "Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable. Default value: enable."
  default     = "enable"
}
variable "default_route_table_propagation" {
  type        = string
  description = "Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: disable, enable. Default value: enable."
  default     = "enable"
}
variable "dns_support" {
  type        = string
  description = "Whether DNS support is enabled. Valid values: disable, enable. Default value: enable."
  default     = "enable"
}
variable "vpn_ecmp_support" {
  type        = string
  description = "Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: disable, enable. Default value: enable."
  default     = "enable"
}
###################################################
# Bastion host
###################################################
/*variable "subnet_id" {
  description = "The VPC Subnet ID to launch in."
  type        = string
  default     = ""
}
variable "key_name" {
  description = "The key name of the Key Pair to use for the instance."
  type        = string
  default     = ""
}
variable "ami" {
  type        = string
  description = " AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  default     = ""
}
variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = ""
}*/