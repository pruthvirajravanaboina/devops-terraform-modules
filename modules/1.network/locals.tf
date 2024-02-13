#Distinct takes a list and return a new  list with any duplicate elements removed.
#toset takes a list and remove any duplicate elements and discard the ordering of the elements.
locals {
  DeployedBy = upper("Terraform")
  Owner = lower("Dev-Team")
  Costcenter = upper("INDIA-8080")
  TeamDL = lower("alphadev@pheniox.com")
  new_public_subnet_cidrs  = distinct(var.public_subnet_cidrs)
  new_private_subnet_cidrs = distinct(var.private_subnet_cidrs)
}