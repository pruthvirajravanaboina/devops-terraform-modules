resource "aws_route_table" "public-routing-table" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name              = "${var.vpc_name}-Public_RT"
    DeployedBy = local.DeployedBy
    Costcenter = local.Costcenter
    TeamDL = local.TeamDL
    environment               = var.environment
  }
}
resource "aws_route_table" "private-routing-table" {
  vpc_id = aws_vpc.default.id


  tags = {
    Name              = "${var.vpc_name}-Private_RT"
    DeployedBy = local.DeployedBy
    Costcenter = local.Costcenter
    TeamDL = local.TeamDL
    environment               = var.environment
  }
}



resource "aws_route_table_association" "public-subnets" {
  # count = 3
  count = length(local.new_public_subnet_cidrs)
  #Using * is called Splat Syntax
  subnet_id      = element(aws_subnet.public-subnets.*.id, count.index)
  route_table_id = aws_route_table.public-routing-table.id
} 
resource "aws_route_table_association" "private-subnets" {
  count          = length(local.new_private_subnet_cidrs)
  subnet_id      = element(aws_subnet.private-subnets.*.id, count.index)
  route_table_id = aws_route_table.private-routing-table.id
}