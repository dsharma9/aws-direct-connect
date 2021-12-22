resource "aws_vpc" "dx-vpc" {
  cidr_block = "10.1.0.0/28"
}

resource "aws_vpn_gateway" "vgw-1" {
  vpc_id = aws_vpc.dx-vpc.id
}