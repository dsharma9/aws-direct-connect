resource "aws_dx_connection" "dx_tf" {
  name          = "tf-dx-connection"
  bandwidth     = "1Gbps"
  location      = "CS32A-7FL"
  provider_name = "CenturyLink"

  tags = {
    env = "test-tf"
  }
}




#### Attaching Connection to LAG 
resource "aws_dx_connection_association" "dx-lag-association" {
  connection_id = "${aws_dx_connection.dx_tf.id}"
  lag_id = "${aws_dx_lag.lag1.id}"
}


