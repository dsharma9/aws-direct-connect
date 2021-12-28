dx_connection_name = "tf-dx-connection"
bandwidth          = "1Gbps"
location           = "CS32A-7FL"
provider_name      = "CenturyLink"
dx_tags = {
  env = "test-tf"
}
lag_name = "tf-dx-lag-1"
lag_tags = {
  connection = "tf-dx-connection"
}
dx_gateway_name  = "tf-dxw-test-1"
amazon_side_asn  = 64600
vif_name         = "vif-test-tf"
vif_vlan         = 4090
address_family   = "ipv4"
vif_bgp_asn      = 65352
amazon_address   = "169.254.255.1/30"
customer_address = "169.254.255.2/30"
vif_tags = {
  Name = "private-vif-test"
}
vpc_ids  = ["vpc-055e1bb95bf2d1214", "vpc-04153ba579587a2cd"]
vpc_cidr = "10.10.0.0/16"
vpc_tags = {
  Name = "VPC-DX"
}
subnet_cidr = "10.10.0.0/18"
subnet_tags = {
  Name = "subnet-dx"
}
