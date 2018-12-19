
resource "aws_route_table" "public_subnet_routing_table" {
  vpc_id = "${aws_vpc.super_stack_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet_gateway.id}"
  }

  tags {
    Name = "Assessment VPC - public route table"
  }
}


resource "aws_route_table_association" "public_subnet_1_rt_association" {
  subnet_id      = "${aws_subnet.public_subnet_one.id}"
  route_table_id = "${aws_route_table.public_subnet_routing_table.id}"
}

resource "aws_route_table_association" "public_subnet_2_rt_association" {
  subnet_id      = "${aws_subnet.public_subnet_two.id}"
  route_table_id = "${aws_route_table.public_subnet_routing_table.id}"
}
