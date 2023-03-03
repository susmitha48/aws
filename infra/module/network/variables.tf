variable "provision_aws_vpc" {
  type        = bool
  default     = false
  description = "If aws vpc should be provisioned or not?"
}
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
variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.1.0.0/16"
}
###################################################
# Internet gateway
###################################################
/*variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = ""
}*/
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
