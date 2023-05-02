#Nat gateway variables     
variable "allocation_id" {
  type    = list(string)
  description = "Id of the EIP to attach to the Nat gateway"
}

variable "name" {
  type    = list(string)
  description = "Name of the Nat Gateways"
}

variable "subnet_id" {
  type    = list(string)
  description = "Id of the subnet to attach the nat gateway"
}

variable "nat_gateway_tags" {
  default     = {
    Account = "connect2"
  }
  description = "Nat gateway tags"
  type        = map(string)
}