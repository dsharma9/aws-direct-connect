resource "aws_dx_connection" "dx_tf" {
  name          = var.dx_connection_name
  bandwidth     = var.bandwidth
  location      = var.location
  provider_name = var.provider_name

  tags = var.dx_tags
}

#### Attaching Connection to LAG 
resource "aws_dx_connection_association" "dx-lag-association" {
  connection_id = aws_dx_connection.dx_tf.id
  lag_id        = aws_dx_lag.lag1.id

}


