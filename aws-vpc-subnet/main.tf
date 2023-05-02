## Importamos las variables del archivo de variables
locals {
  #VPC locals
  vpc_cidr = var.vpc_cidr
  vpc_tags = var.vpc_tags
  vpc_name = var.vpc_name

  #Public subnet locals
  public_subnet_cidrs = var.public_subnet_cidrs
  public_azs = var.public_azs
  public_subnet_tags = var.public_subnet_tags

  #Private subnet locals
  private_subnet_cidrs = var.private_subnet_cidrs
  private_azs = var.private_azs
  private_subnet_tags = var.private_subnet_tags

}

# VPC resource
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
 
  tags = merge(local.vpc_tags,
    {Name = local.vpc_name},
  )
}
 
# Public subnets
resource "aws_subnet" "public_subnet" {
  count = length(local.public_subnet_cidrs)

  cidr_block = element(local.public_subnet_cidrs, count.index)
  vpc_id = aws_vpc.vpc.id
  availability_zone = element(local.public_azs, count.index)

  tags = merge(local.public_subnet_tags,
    {Name = "Public ${count.index}"},
  )

  depends_on = [ 
    aws_vpc.vpc
   ]
}
 
# Private subnets
resource "aws_subnet" "private_subnet" {
  count = length(local.private_subnet_cidrs)

  cidr_block = element(local.private_subnet_cidrs, count.index)
  vpc_id = local.vpc_id
  availability_zone = element(local.private_azs, count.index)

  tags = merge(local.private_subnet_tags,
    {Name = "Private ${count.index}"},
  )

  depends_on = [ 
    aws_vpc.vpc
   ]
}
 