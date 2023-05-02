locals {
  name = var.name
  internal = var.availability_zone
  load_balancer_type = var.load_balancer_type
  subnet_ids = var.subnet_ids
 
}

resource "aws_lb" "load_balance" {
  count = length(local.name)
  name               = element(local.name, count.index)
  internal           = element(local.internal, count.index)
  load_balancer_type = element(local.load_balancer_type, count.index)
  subnets            = [for subnet_id in local.subnet_ids : subnet_id]

  tags = merge(local.tags,
    {Name = element(local.name, count.index)},
  )
}