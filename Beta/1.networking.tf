module "beta_vpc_1" {
  source               = "../modules/1.network"
  public_subnet_cidrs  = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
  private_subnet_cidrs = ["172.16.10.0/24", "172.16.20.0/24", "172.16.30.0/24"]
  azs                  = ["us-east-1a", "us-east-1b", "us-east-1c"]
  vpc_cidr             = "172.16.0.0/16"
  vpc_name             = "BETA"
  environment          = "DEV-BETA"
  owner                = "JavaAppTeam"

}