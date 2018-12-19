resource "aws_subnet" "public_subnet_one" {
  vpc_id     = "${aws_vpc.super_stack_vpc.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags {
    Name = "Assessment VPC - public subnet us-east-1a"
  }
}

resource "aws_subnet" "public_subnet_two" {
  vpc_id     = "${aws_vpc.super_stack_vpc.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags {
    Name = "Assessment VPC - public subnet us-east-1b"
  }
}
