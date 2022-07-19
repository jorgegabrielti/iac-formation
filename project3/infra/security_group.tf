resource "aws_security_group" "general_access" {
  name          = "general_access"
  description   = "Security Group - Generic" 

  # inboud
  ingress {
    cidr_blocks         = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks    = [ "::/0" ]
    from_port           = 0    # all ports
    to_port             = 0    # all ports
    protocol            = "-1" # all protocols
  }

  # outbound
  egress {
    cidr_blocks         = [ "0.0.0.0/0" ]
    ipv6_cidr_blocks    = [ "::/0" ]
    from_port           = 0    # all ports
    to_port             = 0    # all ports
    protocol            = "-1" # all protocols
  }

  tags = {
    name = "general_access"
  }
}

