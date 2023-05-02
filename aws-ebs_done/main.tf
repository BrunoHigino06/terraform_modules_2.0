locals {
  name = var.ebs_name
  availability_zone = var.availability_zone
  size = var.size
  tags = var.tags
 
}

resource "aws_ebs_volume" "example" {
  count = length(local.name)
  availability_zone = element(local.availability_zone, count.index)
  size              = element(local.size, count.index)

  tags = merge(local.tags,
    {Name = element(local.name, count.index)},
  )
}