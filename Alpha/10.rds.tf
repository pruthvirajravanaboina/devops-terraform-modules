module "alpha_rds" {
  source                 = "../modules/10.rds"
  db_subnet_group_name   = "devopssubnetgroup"
  private_subnets        = module.alpha_vpc_1.private_subnets_id
  allocated_storage      = "10"
  engine                 = "mysql"
  engine_version         = "8.0.28"
  identifier             = "myrds1"
  instance_class         = "db.t2.medium"
  db_name                = "devopsinstance"
  vpc_security_group_ids = module.alpha_sg_1.sg_id
  username               = "adminsree"
  password               = module.alpha_secret_rds.rds_secret
}