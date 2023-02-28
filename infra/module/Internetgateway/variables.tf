variable "provision_internet_gw" {
  type        = bool
  default     = false
  description = "If AWS internet gateway should be provisioned or not?"
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
# Internet gateway
###################################################
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = ""
}
variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
  default = {
    "Name" = "ig"
  }
}