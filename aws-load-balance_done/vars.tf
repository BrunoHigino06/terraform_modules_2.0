variable "name" {
  type        = list(string)
  description = "Name of the load balancer"
}

variable "internal" {
  type        = list(bool)
  description = "Whether the load balancer should be internal or not"
}

variable "load_balancer_type" {
  type        = list(string)
  description = "Type of load balancer (e.g. application or network)"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs to attach the load balancer to"
}

variable "tags" {
  type        = map(string)
  default = {}
  description = "Map of tags to apply to all resources"
}