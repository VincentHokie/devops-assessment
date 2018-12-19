resource "aws_vpc" "super_stack_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "Assessment stack VPC"
  }
}