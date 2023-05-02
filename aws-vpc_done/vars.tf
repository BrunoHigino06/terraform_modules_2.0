#VPC variables
variable "cidr_block" {
  type    = list(string)
  description = "CIDR blocks of the VPC"
}

variable "instance_tenancy" {
  type    = list(string)
  description = "Instance tenancy of the VPC"
}

variable "name" {
  type    = list(string)
  description = "Name of the VPC"
}
    
variable "vpc-tags" {   
  default     = {
    Environment = ""   
  }
  description = ""
  type        = map(string)
}
