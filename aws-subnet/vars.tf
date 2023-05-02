# vars.tf

variable "subnet_cidrs" {
  type    = list(string)
  description = "CIDR blocks de las subredes que se crearán"
}

variable "vpc_id" {
  type    = string
  description = "ID de la VPC en la que se crearán las subredes"
}

variable "availability_zones" {
  type    = list(string)
  description = "Zonas de disponibilidad en las que se crearán las subredes"
}

