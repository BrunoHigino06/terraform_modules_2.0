# Importamos las variables del archivo de variables
locals {
  vpc_id = var.vpc_id
  tags = var.igw-tags
  name = var.internet_gateway_names
} 

#Internet gateway resource
resource "aws_internet_gateway" "internet-gateway" {
  count = length(local.name)
  vpc_id = element(local.vpc_id, count.index)
  
  tags = merge(var.igw-tags,
    {Name = element(local.name, count.index)},
  )
}