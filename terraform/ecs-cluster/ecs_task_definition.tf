data "template_file" "task-definition-file" {
  template = "${file("${path.module}/task-def.json")}"

  vars {
    awslogs_group =  "${var.awslogs_group}"
    awslogs_region = "${var.awslogs_region}"
    web_awslogs_stream_prefix = "${var.web_awslogs_stream_prefix}"
    container_memory = "${var.container_memory}"
    docker_repository_url = "048272567753.dkr.ecr.us-east-1.amazonaws.com"
    image_name = "devops-assessment"
  }
}

resource "aws_ecs_task_definition" "task-definition" {

  family = "task-definition-assessment"
  container_definitions = "${data.template_file.task-definition-file.rendered}"
  task_role_arn = "arn:aws:iam::048272567753:role/ecsInstanceRole"
  execution_role_arn = "arn:aws:iam::048272567753:role/ecsInstanceRole"
  network_mode = "awsvpc"
  cpu = "1024"
  memory = "2048"
  requires_compatibilities = ["FARGATE"]

}
