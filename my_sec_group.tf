
resource "aws_security_group" "my_dev_sg" {
  name        = var.var_my_dev_sg
  description = "Allow ssh http and https inbound traffic"
  vpc_id      = "vpc-be96e0d6"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    from_port   = 80
    to_port     = 80
    to_port     = 443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
