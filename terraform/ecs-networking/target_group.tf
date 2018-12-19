resource "aws_lb_target_group" "target_group" {
  name     = "assessment-target-group"
  port     = 80
  protocol = "HTTP"
  target_type = "ip"
  vpc_id   = "${var.vpc_id}"

  health_check {
    interval = "30"
    path = "/"
    protocol = "HTTP"
    timeout = "5"
    healthy_threshold = "5"
    unhealthy_threshold = "2"
    matcher = "200"
  }
}
