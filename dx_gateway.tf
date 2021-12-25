resource "aws_dx_gateway" "tf-dxw-1" {
  name            = var.dx_gateway_name
  amazon_side_asn = var.amazon_side_asn
}

resource "aws_dx_gateway_association" "dxw-vgw-association" {
  count                 = length(var.vpc_ids)
  dx_gateway_id         = aws_dx_gateway.tf-dxw-1.id
  associated_gateway_id = aws_vpn_gateway.vgw-1[count.index].id
}


