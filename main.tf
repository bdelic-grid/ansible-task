module "network" {
  source   = "./modules/network"
  vpc      = var.vpc
  subnet   = var.subnet
  firewall = var.firewall
}

module "instance_group" {
  source = "./modules/instance_group"
  subnet = module.network.subnet_id
}