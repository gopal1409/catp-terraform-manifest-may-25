/*module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "gopal-vpc"
  cidr = var.vpc_cidr

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = var.vpc_db_subnet_cidr
  public_subnets  = var.vpc_app_subnet_cidr
  //enable_nat_gateway = true
  //enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}*/