
resource "aws_default_security_group" "vpc_default_security_group" {
  vpc_id = "${aws_vpc.super_stack_vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "Assessment VPC - allow_web_traffic"
  }
}

resource "aws_security_group" "allow_opsworks_instance_healthcheck" {
  name        = "Assessment VPC - allow_opsworks_instance_healthcheck"
  description = "Allow TCP traffic on port 80"
  vpc_id = "${aws_vpc.super_stack_vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "Assessment VPC - allow_opsworks_instance_healthcheck"
  }
}
