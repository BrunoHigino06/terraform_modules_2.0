# vars.tf
variable "name" {
  type    = list(string)
  description = "CIDR blocks de las subredes que se crearán"
}

variable "description" {
  type    = list(string)
  description = "CIDR blocks de las subredes que se crearán"
}

variable "transit_gateway_tags" {
  default     = {
    Account = "connect2"
  }
  description = "Transit gateway tags"
  type        = map(string)
}