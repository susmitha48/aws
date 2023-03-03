variable "region" {
  type        = string
  description = "Region to deploy AWS services"
}
variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = ""
}
variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
}
variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true."
  type        = bool
}
variable "enable_classiclink" {
  description = "A boolean flag to enable/disable ClassicLink for the VPC."
  type        = bool
}
variable "enable_classiclink_dns_support" {
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC."
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