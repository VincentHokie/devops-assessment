variable "vpc_id" {
  type = "string"
  description = "The environment that we are deploying into"
}

variable "public_subnet_1" {
  type = "string"
  description = "The environment that we are deploying into"
}

variable "public_subnet_2" {
  type = "string"
  description = "The environment that we are deploying into"
}

variable "vpc_default_security_group" {
  type = "string"
  description = "The environment that we are deploying into"
}

output "target_group_arn" {
  value = "${aws_lb_target_group.target_group.arn}"
}
