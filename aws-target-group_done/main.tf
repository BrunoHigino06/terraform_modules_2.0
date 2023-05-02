locals {
  name = var.name
  port = var.port
  protocol = var.protocol
  vpc_id = var.vpc_ip
  tags = var.tags
}

resource "aws_lb_target_group" "target_group" {
  count = length(local.name)
  name     = element(local.name, count.index)
  port     = element(local.port, count.index)
  protocol = element(local.protocol, count.index)
  vpc_id   = local.vpc_id

  tags = local.tags
}