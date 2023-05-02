resource "aws_route_table" "example" {
  vpc_id = var.vpc_id

  for_each = { for r in var.routes : r.cidr_block => r }

  route {
    cidr_block = each.value.cidr_block

    # definir la ruta a través de la puerta de enlace a Internet o del NAT gateway, según corresponda
    gateway_id = each.value.gateway_id
    nat_gateway_id = each.value.nat_gateway_id
  }

  tags = var.route-table-tags
}