resource "aws_lb" "application-lb" {
  name               = "assessment-impact-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.vpc_default_security_group}"]
  subnets            = ["${var.public_subnet_1}", "${var.public_subnet_2}"]
  idle_timeout = "300"
  enable_deletion_protection = false
  enable_http2 = true
  ip_address_type = "ipv4"

  # access_logs {}

  tags {
    Environment = "assessment"
  }
}
