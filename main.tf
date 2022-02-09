resource "aws_ecs_cluster" "cluster" {
  name = "${project}-${var.environment}"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  capacity_providers = ["FARGATE", ]
}
