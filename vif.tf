resource "aws_dx_private_virtual_interface" "tf-vif" {
  connection_id    = aws_dx_lag.lag1.id
  name             = var.vif_name
  vlan             = var.vif_vlan
  address_family   = var.address_family
  bgp_asn          = var.vif_bgp_asn
  dx_gateway_id    = aws_dx_gateway.tf-dxw-1.id
  amazon_address   = var.amazon_address
  customer_address = var.customer_address

  depends_on = [aws_dx_lag.lag1, aws_dx_connection.dx_tf]

  tags = var.vif_tags

}