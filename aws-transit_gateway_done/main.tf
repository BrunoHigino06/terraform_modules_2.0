# Importamos las variables del archivo de variables
locals {
  name = var.name
  description = var.description
  tags = var.transit_gateway_tags
} 

##Transit gateway resource
resource "aws_ec2_transit_gateway" "transit_gateway" {
  count = length(local.name)
  description = element(local.description, count.index)

  tags = merge(local.tags,
    {Name = element(local.name, count.index)},
  )
}

