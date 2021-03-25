resource "aws_ecs_cluster" "ecs" {
  name = var.name

  capacity_providers = [
    "FARGATE"
  ]

  setting {
    name  = "containerInsights"
    value = "enabled"
  }

  tags = {
    Name = var.name
  }
}