resource "aws_security_group" "vpc-ssh" {
  name = "allow_tls"
  description = "Dev VPC SSH"

  ingress {
    description = "Allow Port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0", ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-ssh"
  }
}

resource "aws_security_group" "vpc-web" {
  name = "allow_tls"
  description = "Dev VPC Web"

  ingress {
    description = "Allow Port 22"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0", ]
  }

  egress {
    description = "Allow Port 443"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "vpc-web"
  }
}