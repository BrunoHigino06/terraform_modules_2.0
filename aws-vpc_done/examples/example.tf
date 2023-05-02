module "vpc" {
  source = "../vpc"

  cidr_block = ["10.0.0.0/16", "172.0.0.0/16", "192.0.0.0/16"]
  instance_tenancy = ["default", "default", "default"]
  vpc-tags = {
    "Environment" = "production"
    "Owner" = "Alice"
  }
  name = ["vpc-1", "vpc-2", "vpc-3"]
}