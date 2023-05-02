variable "name" {
  type    = list(string)
  description = "Size of the EBS volume"
}

variable "port" {
  type    = list(string)
  description = "Size of the EBS volume"
}

variable "protocol" {
  type    = list(string)
  description = "Size of the EBS volume"
}

variable "vpc_id" {
  type    = string
  description = "Size of the EBS volume"
}

variable "tags" {
  default     = {
    Account = "connect2"
  }
  description = "EBS Volume tags tags"
  type        = map(string)
}