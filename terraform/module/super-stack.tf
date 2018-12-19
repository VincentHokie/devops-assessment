module "general_networking" {
  source = "../general"
  
}

module "ecs_networking" {
  source = "../ecs-networking"

  public_subnet_2 = "${module.general_networking.public_subnet_2}"
  vpc_default_security_group = "${module.general_networking.vpc_default_security_group}"
  vpc_id = "${module.general_networking.vpc_id}"
  public_subnet_1 = "${module.general_networking.public_subnet_1}"
  
}

module "ecs" {
  source = "../ecs-cluster"

  awslogs_group = "assessment_logs"
  awslogs_region = "us-east-1"
  web_awslogs_stream_prefix = "web"
  public_subnet_2 = "${module.general_networking.public_subnet_2}"
  container_memory = "512"
  container_revision = "latest"
  public_subnet_1 = "${module.general_networking.public_subnet_1}"
  target_group_arn = "${module.ecs_networking.target_group_arn}"
  vpc_default_security_group = "${module.general_networking.vpc_default_security_group}"
}
