#EC2 vars.tf
variable "cidr_block" {
  type    = list(string)
  description = "CIDR blocks of the VPC"
}

variable "instance_names" {
  type    = list(string)
  description = "EC2 instance names"
}

variable "instance_ami" {
  type    = list(string)
  description = "ami Id that will be used to create the ec2 instance"
}

variable "instance_type" {
  type    = list(string)
  description = "Ec2 instace type example t2.nano"
}

variable "instance_subnet_id" {
  type    = list(string)
  description = "Id of the subnet that the EC2 will belongs"
}

variable "instance_security_groups" {
  type    = list(string)
  description = "Id of the Security groups that the EC2 will belongs"
}

variable "instance_device_name" {
  type    = list(string)
  description = "Path associated to the OS, example: /dev/sda"
}

variable "ebs_volume_id" {
  type    = list(string)
  description = "Id of the ebs volume that will be attached to the EC2 instance"
}

variable "tags" {
  default     = {
    Account = "connect2"
  }
  description = "EC2 instance tags"
  type        = map(string)
}