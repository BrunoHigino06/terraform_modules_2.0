variable "network_acl" {
  description = "A list of objects containing details about the network ACL rules"
  type = list(object({
    name        = string
    vpc_id      = string
    ingress     = map(object({
      protocol   = string
      rule_no    = number
      action     = string
      cidr_block = string
      from_port  = number
      to_port    = number
    }))
    egress      = map(object({
      protocol   = string
      rule_no    = number
      action     = string
      cidr_block = string
      from_port  = number
      to_port    = number
    }))
  }))
}

variable "tags" {
  description = "A map of tags to assign to the network ACL resources"
  type = map(string)
}






