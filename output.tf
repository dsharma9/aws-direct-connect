output "dx_tf_id" {
  value = aws_dx_connection.dx_tf.id
}

output "dx-endpoint" {
  value = aws_dx_connection.dx_tf.aws_device
}

output "LAG-id" {
  value = aws_dx_lag.lag1.id
}

output "dxw-id" {
  value = aws_dx_gateway.tf-dxw-1.id
}

output "VIF-id" {
  value = aws_dx_private_virtual_interface.tf-vif.id
}

output "DX-endpoint-on-which-VIF-terminates" {
  value = aws_dx_private_virtual_interface.tf-vif.aws_device
}

output "VPN-Gateways" {
  value = aws_vpn_gateway.vgw-1.*.id
}

