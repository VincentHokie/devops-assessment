resource "aws_ecs_service" "assessment-service" {
  name            = "assessment-impact-service"
  cluster         = "${aws_ecs_cluster.mc_cluster.id}"
  task_definition = "${aws_ecs_task_definition.task-definition.arn}"
  desired_count   = 1
  launch_type = "FARGATE"
  deployment_maximum_percent = "100"
  deployment_minimum_healthy_percent = "0"
  health_check_grace_period_seconds = "0"

  network_configuration {
    subnets = ["${var.public_subnet_1}", "${var.public_subnet_2}"]
    security_groups = ["${var.vpc_default_security_group}"]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = "${var.target_group_arn}"
    container_name   = "web"
    container_port   = 80
  }

}
