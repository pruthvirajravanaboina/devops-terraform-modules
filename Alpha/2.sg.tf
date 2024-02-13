module "alpha_sg_1" {
  source        = "../modules/2.sg"
  vpc_name      = module.alpha_vpc_1.vpc_name
  vpc_id        = module.alpha_vpc_1.vpc_id
  environment   = module.alpha_vpc_1.environment
  service_ports = ["80", "443", "22", "3389", "3306"]
}