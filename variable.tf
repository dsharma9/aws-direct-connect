variable "dx_connection_name" {
  type        = string
  description = " The name of Direct Connect resource"
  default     = "default-value"
}

variable "bandwidth" {
  type        = string
  description = "DX conneciton speed"
  default     = "1Gbps"
}

variable "location" {
  type        = string
  description = "location of the DX conneciton with floor number"

}

variable "provider_name" {
  type        = string
  description = "Name of the ISP provider/partner"
  default     = "default-value"
}

variable "dx_tags" {
  type        = map(string)
  description = "Direct connect tags"
  default = {
    a = "b"
  }
}

variable "lag_name" {
  type        = string
  description = "Name of the LAG"
  default     = "default-value"
}

variable "lag_tags" {
  type        = map(string)
  description = "LAG tags"
  default = {
    a = "b"
  }
}

variable "dx_gateway_name" {
  type        = string
  description = "Name of the DX gateway"
  default     = "default-value"
}

variable "amazon_side_asn" {
  type        = number
  description = "ASN of amazon_side_asn"
  default     = 65412
}

variable "vif_name" {
  type        = string
  description = "name of aws_dx_private_virtual_interface (vif)"
  default     = "default-value"
}

variable "vif_vlan" {
  type        = number
  description = "vlan number for vif"
  default     = 4091
}

variable "address_family" {
  type        = string
  description = "address_family"
  default     = "ipv4"
}

variable "vif_bgp_asn" {
  type        = number
  description = "BGP ASN for VIF"
  default     = 65412
}

variable "amazon_address" {
  type        = string
  description = "IP address of amazon side"
  default     = "169.254.255.1/30"
}

variable "customer_address" {
  type        = string
  description = "Customer side Ip address"
  default     = "169.254.255.2/30"
}

variable "vif_tags" {
  type        = map(string)
  description = "VIF tags"
  default = {
    a = "b"
  }
}

variable "vpc_ids" {
  type    = list(string)
  default = ["vpc-id-0", "vpc-id-1"]

}

variable "aws_region" {
  type        = string
  description = "AWS Region ID/Name"
  default     = "us-east-1"
}


