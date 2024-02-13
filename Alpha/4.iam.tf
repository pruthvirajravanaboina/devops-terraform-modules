module "alpha_iam_1" {
  source              = "../modules/4.iam"
  env                 = module.alpha_vpc_1.environment
  rolename            = "devopstestrole"
  instanceprofilename = "devopsinstanceprofile"
  iam_policy_name     = "devops-iampolicy"
}
