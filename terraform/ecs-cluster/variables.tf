
variable "awslogs_group" {
    type = "string"
    description = "An AWS feature that allows logical seperation of logs in CloudWatch"
}

variable "awslogs_region" {
    type = "string"
    description = "The region where our log group is created to gather logs"
}

variable "web_awslogs_stream_prefix" {
    type = "string"
    description = "This is used by CloudWatch to seperate logs sent by different containers"
}

variable "container_memory" {
    type = "string"
    description = "Amount of RAM in MBs to give our contianers"
}

variable "docker_repository_url" {
    type = "string"
    default = "997386117669.dkr.ecr.us-east-1.amazonaws.com"
    description = "A unique URL pointing to the MC AWS Elastic Container Registry"
}

variable "container_revision" {
    type = "string"
    description = "The tag/branch we intend to deploy to this cluster"
}

variable "vpc_default_security_group" {
    type = "string"
    description = "The tag/branch we intend to deploy to this cluster"
}

variable "image_name" {
    type = "string"
    default = "web"
    description = "One of our public subnets where our application instances live"
}

variable "public_subnet_1" {
  type = "string"
  description = "The environment that we are deploying into"
}

variable "public_subnet_2" {
  type = "string"
  description = "The environment that we are deploying into"
}

variable "target_group_arn" {
  type = "string"
  description = "The environment that we are deploying into"
}

output "cluster_name" {
  value = "${aws_ecs_cluster.mc_cluster.name}"
}

output "cluster_service_name" {
  value = "${aws_ecs_service.assessment-service.name}"
}
