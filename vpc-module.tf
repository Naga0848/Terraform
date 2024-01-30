# Create vpc terraform module
module "tf_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"

  # VPC Basic Details

  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  azs             = var.vpc_availability_zones

  # Database subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # NAT Gateways - Outbound Communication
  enable_nat_gateway = true
  single_nat_gateway = true

  tags     = local.common_tags
  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }

}


