
output "public_subnet_1" {
  value = "${aws_subnet.public_subnet_one.id}"
}

output "public_subnet_2" {
  value = "${aws_subnet.public_subnet_two.id}"
}

output "vpc_id" {
  value = "${aws_vpc.super_stack_vpc.id}"
}

output "vpc_default_security_group" {
  value = "${aws_default_security_group.vpc_default_security_group.id}"
}

output "allow_opsworks_instance_healthcheck_sg" {
  value = "${aws_security_group.allow_opsworks_instance_healthcheck.id}"
}

output "public_subnet_1_az" {
  value = "${aws_subnet.public_subnet_one.availability_zone}"
}

output "public_subnet_2_az" {
  value = "${aws_subnet.public_subnet_two.availability_zone}"
}
