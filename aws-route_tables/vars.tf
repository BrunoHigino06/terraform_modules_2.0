#Route table variables
variable "routes" {
  type = list(object({
    cidr_block    = string
    gateway_id    = string
    nat_gateway_id = string
  }))
  description = "Route table variable"
}

variable "vpc_id" {
  type = string
  description = "VPC id associated with the route table"
}

variable "route-table-tags" {   
  default     = {
    Name = "my-vpc"
    Account = "connect2"   
  }
  description = "VPC tags"
  type        = map(string)
}
