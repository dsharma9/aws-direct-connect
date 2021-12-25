resource "aws_dx_lag" "lag1" {
  name                  = var.lag_name
  connections_bandwidth = var.bandwidth
  location              = var.location
  connection_id         = aws_dx_connection.dx_tf.id
  provider_name         = var.provider_name
  force_destroy         = true

  depends_on = [
    aws_dx_connection.dx_tf,
  ]

  tags = var.lag_tags

}



