variable "description" {
  type        = string
  description = "Set the description of your transit gateway to help you identify it in the future"
  default     = "A transit gateway (TGW) is a network transit hub that interconnects attachments (VPCs and VPNs) within the same AWS account or across AWS accounts."
}
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
variable "multicast_support" {
  type        = string
  description = "The EC2 Transit Gateway must have multicast_support enabled.Valid values: disable, enable. Default value: enable."
  default     = "enable"
}
variable "transit_gateway_cidr_blocks" {
  description = "One or more IPv4 or IPv6 CIDR blocks for the transit gateway. Must be a size /24 CIDR block or larger for IPv4, or a size /64 CIDR block or larger for IPv6"
  type        = list(string)
  default     = []
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
