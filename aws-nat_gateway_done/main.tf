locals {
  allocation_id = var.allocation_id
  subnet_id = var.subnet_id
  name = var.nat_gateway_names
  tags = var.nat-nat-gw-tags
}
resource "aws_nat_gateway" "nat-gw" {
  count = length(local.name)
  allocation_id = element(local.allocation_id, count.index)
  subnet_id     = element(local.subnet_id, count.index)
    
  tags = merge(local.tags,
    {Name = element(local.nat_gateway_names, count.index)},
  )
}