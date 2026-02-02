# modules/environment/main.tf
module "network" {
  source    = "../network"
  vpc_cidr  = var.vpc_cidr
}

module "compute" {
  source   = "../compute"
  vpc_id   = module.network.vpc_id
}