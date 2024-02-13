resource "aws_subnet" "private-subnets" {
  #   count             = 3
  count             = length(local.new_private_subnet_cidrs)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(local.new_private_subnet_cidrs, count.index)
  availability_zone = element(distinct(var.azs), count.index)

  tags = {
    Name              = "${var.vpc_name}-Private-Subnet-${count.index + 1}"
    DeployedBy = local.DeployedBy
    Costcenter = local.Costcenter
    TeamDL = local.TeamDL
    environment               = var.environment
  }
}
