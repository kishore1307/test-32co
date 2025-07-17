# Updated VPC module configuration
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.8.0"  

  name = "app-vpc"
  cidr = var.vpc_cidr

  azs             = ["${var.aws_region}a", "${var.aws_region}b"]
  public_subnets  = var.public_subnet_cidrs
  private_subnets = var.private_subnet_cidrs

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_flow_log      = false  

  # Explicitly disable flow log creation
  create_flow_log_cloudwatch_log_group = false
  create_flow_log_cloudwatch_iam_role  = false
}
