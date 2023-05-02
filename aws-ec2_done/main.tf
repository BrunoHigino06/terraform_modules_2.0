locals {
  name = var.instance_names
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.instance_subnet_id
  security_groups = var.instance_security_groups
  device_name = var.instance_device_name
  volume_id = var.ebs_volume_id
  tags = var.tags
}

resource "aws_instance" "ec2" {
  count = length(local.name)
  ami           = element(local.ami, count.index)
  instance_type = element(local.instance_type, count.index)
  subnet_id = element(local.subnet_id, count.index)
  security_groups = [ element(local.security_groups, count.index) ]
  ebs_block_device {
    device_name = element(local.device_name, count.index)
    volume_id   = element(local.volume_id, count.index)
    delete_on_termination = true
  }

  tags = merge(local.tags,
    {Name = element(local.name, count.index)},
  )
}