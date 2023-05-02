# Importamos las variables del archivo de variables
locals {
  subnet_cidrs = var.subnet_cidrs
  vpc_id = var.vpc_id
  availability_zones = var.availability_zones
}

# Creamos las subnets de forma recursiva
resource "aws_subnet" "subnet" {
  count = length(local.subnet_cidrs)

  cidr_block = element(local.subnet_cidrs, count.index)
  vpc_id = local.vpc_id
  availability_zone = element(local.availability_zones, count.index)

  tags = {
    Name = "Subnet ${count.index}"
  }
}

