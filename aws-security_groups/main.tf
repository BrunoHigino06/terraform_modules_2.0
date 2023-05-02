resource "aws_security_group" "example" {
  count = length(var.security_groups)
  name_prefix = var.security_groups[count.index].name_prefix
  description = var.security_groups[count.index].description

  dynamic "ingress" {
    for_each = var.security_groups[count.index].ingress
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.security_groups[count.index].egress
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}
