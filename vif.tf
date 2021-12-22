resource "aws_dx_private_virtual_interface" "tf-vif" {
  connection_id = aws_dx_lag.lag1.id
  name           = "vif-test-tf"
  vlan           = 4094
  address_family = "ipv4"
  bgp_asn        = 65352
  dx_gateway_id  = aws_dx_gateway.tf-dxw-1.id
  amazon_address    = "169.254.255.1/30"
  customer_address   = "169.254.255.2/30"

  depends_on = [
    aws_dx_lag.lag1,
  ]

  tags = {
    Name = "private-vif-test"
  }
}