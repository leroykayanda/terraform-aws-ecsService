output "cloudwatch_loggroup" {
  value = aws_cloudwatch_log_group.CloudWatchLogGroup.name
}

output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

output "alb_alias" {
  value = aws_route53_record.alb.name
}
