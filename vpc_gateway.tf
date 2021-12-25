resource "aws_vpn_gateway" "vgw-1" {
  count           = length(var.vpc_ids)
  vpc_id          = var.vpc_ids[count.index]
  amazon_side_asn = var.amazon_side_asn
}