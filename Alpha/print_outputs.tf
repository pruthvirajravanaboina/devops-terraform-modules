output "vpc_id" {
  value = module.alpha_vpc_1.vpc_id
}

output "public-subnets" {
  value = module.alpha_vpc_1.public_subnets_id
}