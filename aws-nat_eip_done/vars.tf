# vars.tf
variable "eip-tags" {
  default     = {
    Account = "connect2"
  }
  description = "Elatic IP address tags"
  type        = map(string)
}

variable "eip_names" {
  type    = list(string)
  description = "Name of the Elastic IP address that will be associated with the Nat Gateway"
}