module "network" {
  source  = "git::https://github.com/your-org/terraform-aws-network.git?ref=v1.2.0"
  vpc_cidr = "10.1.0.0/16"
}

# tags of github repo knowledge used above