module "vpc" {
  source = "./vpc-module"
  cidr_block = var.cidr_block
  env = var.env
}
