module "vpc" {
  source = "..\\"

  cidr_block = ["192.168.0.0/16", "10.0.0.0/16", "172.0.0.0/16"]
  instance_tenancy = ["default", "default", "default"]
  vpc-tags = {
    Environment = "production"
    Owner = ""
  }
  name = ["vpc1", "vpc2", "vpc3"]
}