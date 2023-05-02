#EBS vars.tf
variable "ebs_name" {
  type    = list(string)
  description = "EBS name"
}

variable "availability_zone" {
  type    = list(string)
  description = "Availability zone where the EBS will be created"
}

variable "size" {
  type    = list(string)
  description = "Size of the EBS volume"
}

variable "tags" {
  default     = {
    Account = "connect2"
  }
  description = "EBS Volume tags tags"
  type        = map(string)
}