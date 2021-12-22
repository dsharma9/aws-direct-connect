resource "aws_dx_gateway" "tf-dxw-1" {
  name            = "tf-dxw-test-1"
  amazon_side_asn = "64600"
}

resource "aws_dx_gateway_association" "dxw-vgw-association" {
  dx_gateway_id         = aws_dx_gateway.tf-dxw-1.id
  associated_gateway_id = aws_vpn_gateway.vgw-1.id
}


