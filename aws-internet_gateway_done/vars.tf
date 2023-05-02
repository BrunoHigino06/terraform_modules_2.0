#Internet gateway tags
variable "igw-tags" {
  default     = {}
  description = "Internet gateway tags"
  type        = map(string)
}

variable "internet_gateway_names" {
  type    = list(string)
  description = "Internet gateway names"
}

variable "vpc_id" {
  type    = list(string)
  description = "VPC Id for that the internet gateway will be attached"
}