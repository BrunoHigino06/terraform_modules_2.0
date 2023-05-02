# Importamos las variables del archivo de variables
locals {
  eip_names = var.eip_names
  tag = var.eip-tags
}
#Nat gateway resouce
resource "aws_eip" "NatEip" {
  count = length(local.eip_names)
  vpc      = true
    
  tags = merge(local.tags,
    {Name = element(local.eip_names, count.index)},
  )
}