output "aws_lb" {
  value       = "http://${aws_lb.ecs.dns_name}"
  description = "The public dns name of the external lb"
}
