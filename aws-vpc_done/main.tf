locals {
  cidr_block = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags = var.vpc-tags
  name = var.name
}
resource "aws_vpc" "vpc" {
  count = length(local.name)
  cidr_block       = element(local.cidr_block, count.index)
  instance_tenancy = element(local.instance_tenancy, count.index)

  tags = merge(local.tags,
    {Name = element(local.name, count.index)},
  )
}