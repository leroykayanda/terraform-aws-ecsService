This module is used to create a single AWS ECS Fargate service within an existing ECS cluster. To create an ECS cluster with a single service, use [this module](https://registry.terraform.io/modules/leroykayanda/ecsModule/aws/latest) instead. 

    module "ecsService" {
    source = "leroykayanda/ecsService/aws"
    version = "1.0.11"
    cluster_arn = data.terraform_remote_state.cluster_arn.outputs.ecs_cluster_arn
    container_image = var.container_image
    container_name = var.container_name
    container_port = var.container_port
    env = var.env
    region = var.region
    service_name = "${var.env}-${var.microservice_name}"
    task_execution_role = aws_iam_role.ExecutionRole.arn
    fargate_cpu = var.fargate_cpu
    fargate_mem = var.fargate_mem
    task_environment_variables = var.task_environment_variables
    task_secret_environment_variables = var.task_secret_environment_variables
    desired_count = var.desired_count
    task_subnets = var.task_subnets
    vpc_id = var.vpc_id
    vpc_cidr = var.vpc_cidr
    alb_access_log_bucket = aws_s3_bucket.alb_access_logs.bucket
    internal = var.internal
    alb_public_subnets = var.alb_public_subnets
    deregistration_delay = var.deregistration_delay
    health_check_path = var.health_check_path
    certificate_arn = var.certificate_arn
    waf = var.waf
    zone_id = var.zone_id
    domain_name = var.domain_name
    min_capacity = var.min_capacity
    max_capacity = var.max_capacity
    cluster_name = data.terraform_remote_state.cluster_arn.outputs.ecs_cluster_name
    sns_topic = var.sns_topic
    }
