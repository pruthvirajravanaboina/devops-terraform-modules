output "vpc_id" {
  value = module.beta_vpc_1.vpc_id
}

output "public-subnets" {
  value = module.beta_vpc_1.public_subnets_id
}