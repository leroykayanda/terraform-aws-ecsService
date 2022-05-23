
variable "service_name" {
  type        = string
  description = "Name of the ECS service"
}

variable "cluster_arn" {
  type        = string
  description = "ARN of cluster to add this service to"
}

variable "task_execution_role" {
  type = string
}

variable "fargate_cpu" {
  type        = number
  description = "Number of cpu units used by a Fargate task"
  default     = 1
}

variable "fargate_mem" {
  type        = number
  description = "Amount (in MiB) of memory used by the task"
  default     = 2048
}

variable "container_name" {
  type        = string
  description = "Name of the container"
}

variable "container_image" {
  type = string
}

variable "task_environment_variables" {
  type    = list(map(string))
  default = []
}

variable "task_secret_environment_variables" {
  type    = list(map(string))
  default = []
}

variable "region" {
  type = string
}

variable "env" {
  type        = string
  description = "Deployment environment eg prod, dev"
}

variable "container_port" {
  type        = number
  description = "Port used by the container to receive traffic"
}

variable "desired_count" {
  type        = string
  description = "Desired number of tasks"
}

variable "task_subnets" {
  type        = list(string)
  description = "Private subnets to be used to launch the ECS tasks"
}

variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "internal" {
  type        = string
  description = "Boolean - whether the ALB is internal or not"
}

variable "alb_public_subnets" {
  type        = list(string)
  description = "Subnets for an ALB - can be public or private"
  default     = []
}

variable "alb_access_log_bucket" {
  type = string
}

variable "deregistration_delay" {
  type        = number
  description = "ALB target group deregistration delay"
}

variable "health_check_path" {
  type        = string
  description = "Health check path"
  default     = "/"
}

variable "certificate_arn" {
  type        = string
  description = "Certificate for the ALB HTTPS listener"
}

variable "waf" {
  type        = string
  description = "Tag used by AWS Firewall manager to determine whether or not to associate a WAF. Value can be yes or no "
  default     = "yes"
}

variable "zone_id" {
  type        = string
  description = "Hosted Zone ID for the zone you want to create the ALB DNS record in"
}

variable "domain_name" {
  type        = string
  description = "DNS name in your hosted zone that you want to point to the ALB"
}

variable "min_capacity" {
  type        = number
  description = "Minimum no. of tasks"
}

variable "max_capacity" {
  type        = number
  description = "Maximum no. of tasks"
}

variable "cluster_name" {
  type        = string
  description = "Name of the ECS cluster"
}

variable "sns_topic" {
  type        = string
  description = "SNS topic ARN for notifications"
  default     = ""
}
