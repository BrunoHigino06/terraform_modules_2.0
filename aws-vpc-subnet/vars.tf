## vars.tf
#VPC vars
variable "vpc_cidr" {
  type    = string
  description = "CIDR block of the VPC"
}

variable "vpc_tags" {
  description = "Tags of the VPC that will be created"
  type        = map(string)
}

variable "vpc_name" {
  type    = string
  description = "Name of the VPC that will be created"
}

#Public subnet vars
variable "public_subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks of the public subnets"
}

variable "public_azs" {
  type    = list(string)
  description = "Avilability zones of the public subnets"
}

variable "public_subnet_tags" {
  type        = map(string)
  description = "Tags of the public subnets"
}

#Private subnet vars
variable "private_subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks of the private subnets"
}

variable "private_azs" {
  type    = list(string)
  description = "Avilability zones of the private subnets"
}

variable "private_subnet_tags" {
  type        = map(string)
  description = "Tags of the private subnets"
}