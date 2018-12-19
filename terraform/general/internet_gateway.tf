resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${aws_vpc.super_stack_vpc.id}"

  tags {
    Name = "Assessment VPC - internet gateway"
  }
}