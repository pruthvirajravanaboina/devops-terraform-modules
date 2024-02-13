module "alpha_compute_1" {
  source = "../modules/5.compute"
  env    = module.alpha_vpc_1.environment
  amis = {
    us-east-1 = "ami-04505e74c0741db8d" # ubuntu 20.04 LTS
    us-east-2 = "ami-04505e74c0741db90" # ubuntu 20.04 LTS
  }
  aws_region           = var.aws_region
  instance_type        = var.instance_type
  key_name             = var.key_name
  project_name         = var.project_name
  public_subnets       = module.alpha_vpc_1.public_subnets_id
  private_subnets      = module.alpha_vpc_1.private_subnets_id
  sg_id                = module.alpha_sg_1.sg_id
  vpc_name             = module.alpha_vpc_1.vpc_name
  iam_instance_profile = module.alpha_iam_1.instprofile
}