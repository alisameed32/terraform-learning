module "environment" {
  source   = "../../modules/environment"
  vpc_cidr = "10.1.0.0/16"
}