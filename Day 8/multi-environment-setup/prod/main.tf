module "environment" {
  source   = "../../modules/environment"
  vpc_cidr = "10.2.0.0/16"
}