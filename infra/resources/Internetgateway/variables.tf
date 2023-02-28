variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-084d58c8bf1cdbf57"
}
variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
}