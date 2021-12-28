resource "aws_vpc" "vpc_dx" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = var.vpc_tags
}


resource "aws_subnet" "subnet_dx_1" {
  vpc_id     = aws_vpc.vpc_dx.id
  cidr_block = var.subnet_cidr

  tags = var.subnet_tags

}


resource "aws_route_table" "route_dx" {
  vpc_id = aws_vpc.vpc_dx.id

}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_dx_1.id
  route_table_id = aws_route_table.route_dx.id
}


resource "aws_vpn_gateway" "vgw-1" {
  #  count           = length(var.vpc_ids)
  #  vpc_id          = var.vpc_ids[count.index]
  amazon_side_asn = var.amazon_side_asn
  vpc_id          = aws_vpc.vpc_dx.id

}