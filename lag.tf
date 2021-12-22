resource "aws_dx_lag" "lag1" {
  name                  = "tf-dx-lag-1"
  connections_bandwidth = "1Gbps"
  location              = "CS32A-7FL"
  connection_id         = aws_dx_connection.dx_tf.id
  provider_name         = "CenturyLink"
  force_destroy         = true

  depends_on = [
    aws_dx_connection.dx_tf,
  ]

  tags = {
    connection = "tf-dx-connection"
  }
}



