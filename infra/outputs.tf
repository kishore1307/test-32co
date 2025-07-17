output "alb_dns" {
  value = aws_lb.app_alb.dns_name
}

output "db_endpoint" {
  value = aws_db_instance.app_db.address
}

output "s3_bucket" {
  value = aws_s3_bucket.static_assets.bucket
}

output "cw_alarm_arn" {
  value = aws_cloudwatch_metric_alarm.high_cpu.arn
}
